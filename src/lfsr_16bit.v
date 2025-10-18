`timescale 1us / 1ns
module lfsr_16bit(
input reset,clk,en,
output reg [15:0] lfsr
 );
    
 localparam seed = 16'h1001;
 wire feedback;
 assign feedback = lfsr[15] ^ lfsr[13] ^lfsr[12] ^ lfsr[10];
 
 always @ (posedge clk or negedge reset) begin
    if(!reset) 
        lfsr <= seed;
 
    else if (en == 1'b1) 
        lfsr <= {lfsr [14:0],feedback};
 
end
endmodule
