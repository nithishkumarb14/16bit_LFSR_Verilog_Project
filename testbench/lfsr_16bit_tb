`timescale 1us / 1ns

module lfsr_16bit_tb();
reg reset,clk=0,en;
wire [15:0] lfsr;

lfsr_16bit l1 (reset,clk,en,lfsr);

always begin
#0.5 clk = ~clk;
end

initial begin

$monitor($time," enable=%b lfsr=0x%x \n",en,lfsr);

#1 reset=0; en=0;
#2 reset=1;
repeat(5) @(posedge clk);
#2 en=1;

repeat(15) @(posedge clk);
#2 en=0;

end

initial begin
#40 $finish;
end


endmodule
