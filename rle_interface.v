module rle (
	clk, 		
	nreset, 	
	start,
	message_addr,	
	message_size, 	
	rle_addr, 	
	rle_size, 	
	done, 		
	port_A_clk,
        port_A_data_in,
        port_A_data_out,
        port_A_addr,
        port_A_we
	);

input	clk;
input	nreset;
// Initializes the RLE module
input	start;
// Tells RLE to start compressing the given frame
input 	[31:0] message_addr;
// Starting address of the plaintext frame
// i.e., specifies from where RLE must read the plaintext frame
input	[31:0] message_size;
// Length of the plain text in bytes
input	[31:0] rle_addr;
// Starting address of the ciphertext frame
// i.e., specifies where RLE must write the ciphertext frame
input   [31:0] port_A_data_out;
// read data from the dpsram (plaintext)
output  [31:0] port_A_data_in;
// write data to the dpsram (ciphertext)
output  [15:0] port_A_addr;
// address of dpsram being read/written
output  port_A_clk;
// clock to dpsram (drive this with the input clk)
output  port_A_we;
// read/write selector for dpsram
output	[31:0] rle_size;
// Length of the compressed text in bytes
output	done; // done is a signal to indicate that encryption of the frame is complete

//Define states
reg [2:0] state;
// 0 = start (not to be confused with input start)
// 1 = read
// 2 = encode
// 3 = write
// 4 = reset

//Define a bunch of variables here
reg d_clk; //Debug
reg full_reset;
reg [31:0] d_in; //data in
reg [31:0] buff; //buffer needed to store a word (4 bytes)
reg buff_on; //is the buffer on
reg read_frst; //1 if not first read 0 if it is
reg buff_full;  //buffer is full
reg d_in_empty;  //data in is empty
reg [31:0] d_in_shft_ct;  //number of times d_in has been shifted, used to check if we've checked the entire d_in
reg [7:0] prev_val; //the previous value of d_in
reg [7:0] prev_run; //the number of times the prvious value of d_in has been seen
reg [15:0] wr_amt;  //the number of bytes we've written (offset from where we've started)
reg [15:0] rd_amt;  //the number of bytes we've read (offset from where we've started)
reg [15:0] rle_siz; //the size of our encoding
reg wr_done;
wire rd_done;

//Assign obvious outputs
assign port_A_data_in = buff; //can't write to port_A_data_in in the always
assign port_A_clk = clk; //self-explanatory
assign rle_size = rle_siz; //self-explanatory
assign rd_done = (rd_amt >= message_size); //if we've read >= the message size we stop

//Logic for statemachine
//note posedge of clk and 
//nreset == 1 normal running
//nreset == 0 reset the rle coprocessor
always@(posedge clk) begin
    if((state == 0) | start | ~nreset) begin
        //Everything gets set to 0 in the initial state
        state <= 1;
        buff <= 0;
        buff_on <= 0;
        read_frst <= 0;
        d_in_empty <= 0;
        buff_full <= 0;
        d_in_shft_ct <= 0;
        prev_val <= 0;
        prev_run <= 0;
        wr_amt <= 0;
        rd_amt <= 0;
        rle_siz <= 0;
        full_reset <= 0;
    end

    else if((state == 1) & nreset) begin //if in start state and nreset = 1 do stuff
        rd_amt <= rd_amt + 16'd4; //increment the next 4 bytes
        if(~buff_full) begin //if the buffer isn't full, encode and fill
            state <= 3;
        end

        else begin //else write to the file
            state <= 2;
        end

        wr_done <= 0; //we're obviously not done writing yet
        d_in <= port_A_data_out; //here we take our data from the DPSRAM
        d_in_empty <= 0; //the data_in is not empty, we just took some from the DPSRAM
    end

    else if((state == 2) & ~wr_done & nreset ) begin //if write incomp, state=2,nreset=1
        wr_amt <= wr_amt + 16'd4; //we're writing, increment to the next 4 bytes
        buff <= 0; //flush buffer, we wrote our contents
        buff_full <= 0; //buffer is not full anymore
        buff_on <= 0; //buffer offset is 0 because it's empty
        if(rd_done & d_in_empty) begin //if read is done and data in empty
            wr_done <= 1; //done writing
        end

        else if((full_reset) & ~nreset) begin
          state <= 4; 
        end

        else begin
            if(d_in_empty) begin //if there's no data to read
                state <= 1; //go back to start state
            end

            else begin //else
                state <= 3; //go back to encode state (more stuff to encode)
            end

        end

    end

    else if((state == 3) & nreset) begin //if we're encoding and nreset = 1
        if(~read_frst) begin //if not the first read
            prev_run <= prev_run + 8'd1; //increment the number of times we've run
            prev_val <= d_in[7:0];  //save current d_in for the next clock cycle
            read_frst <= 1; //this continues to not be our first read
        end

        else begin //this is our first read
            if((d_in_shft_ct == 3) & (d_in[7:0] != 0) & rd_done) begin //if we have data, and we've shifted it 4 times
                buff <= ({d_in[7:0], 8'd1, prev_val, prev_run}); //write the two bytes we see now, we only saw sequence once, and the prev bytes 
                state <= 2;                                      //seen with their count, then go to state = 2
                rle_siz <= rle_siz + 16'd4;                      //increase the rlesize the 4 bytes we just encoded
                d_in_shft_ct <= 0;                                     //reset our input offset
            end

            else if((d_in[7:0] != prev_val)) begin  //if what's seen now isn't the same was what was seen before
                prev_run <= 1;                      //reset how many times we've seen the previous data
                prev_val <= d_in[7:0];              //take in our new data into the previous, the lower 8 bits
                if(buff_on) begin  //if buff_on = 1, 
                    buff <= buff | ({prev_val, prev_run} << 16); //write what we saw last (in this case same is current d_in and the occurences
                    state <= 2; //go to write state
                    rle_siz <= rle_siz + 16'd2; //increment rle_size
                    buff_full <= 1; //our buffer is full
                end

                else begin                          //the last repeating data has been seen
                    buff_on <= 1;                  //reset buff_on
                    if(read_frst & (prev_run != 0)) begin
                        buff[15:0] <= {prev_val, prev_run};  //write the last data we saw and the number of times we saw it
                        rle_siz <= rle_siz + 16'd2;     //increase rlesize by the bytes we've written
                    end
                end

            end

            else if(d_in[7:0] == prev_val) begin    //if the data seen before is the same as the current
                prev_run <= prev_run + 8'd1;        //increase the number of times we've seen
            end

        end

        if(d_in_shft_ct != 2'd3) begin //if we haven't shifted our d_in 4 times
            d_in_shft_ct <= d_in_shft_ct + 2'd1; //incrememnt the shift count
            d_in <= d_in >> 8; //bitshift d_in by 8 bits right
        end

        else begin                  //once shifted 4 bytes
            d_in_empty <= 1;        //data is empty
            if(~rd_done) begin      //if read isn't done
                d_in_shft_ct <= 0;  //reset the d_in shift count
                state <= 1;         //go back to read state
            end

            else if (buff_on & rd_done) begin //if buffer is on and done reading 
                d_in_shft_ct <= 0;      //reset
                state <= 2;             //go to writing
            end

        end

    end

    else if((state == 4) | ~nreset | full_reset) begin //debug
        state <= 0;
        buff <= 0;
        buff_on <= 0;
        read_frst <= 0;
        d_in_empty <= 0;
        buff_full <= 0;
        d_in_shft_ct <= 0;
        prev_val <= 0;
        prev_run <= 0;
        wr_amt <= 0;
        rd_amt <= 0;
        rle_siz <= 0;
        full_reset <= 0;
    end

    //These don't work for some reason
    //done <= rd_done & wr_done;
    //port_A_we = (state == 2) ? 1'b1:1'b0;
    //port_A_addr = (state == 2) ? rle_addr + wr_amt: message_addr + rd_amt;
    //port_A_data_in = buff; 
    //port_A_clk = clk; 
    //rle_size = rle_siz; 
    //rd_done = (rd_amt >= message_size); 
end

//Assign all our outputs 
assign port_A_we = (state == 2) ? 1'b1:1'b0; //we only write in state 2
assign port_A_addr = (state == 2) ? rle_addr + wr_amt: message_addr + rd_amt; //depending on our state, the address is different
assign done = rd_done & wr_done | full_reset; //check to see if we're done
endmodule
