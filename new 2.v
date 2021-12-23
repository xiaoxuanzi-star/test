`timescale 1ns/1ps
module counter_6_tb();
    reg RST;
    reg CLK;
    wire [2:0] CNT;
    counter_6 counter(
    .CLK(CLK),
    .RST(RST),
    .CNT(CNT));
    initial begin
		CLK=1'b0;
		RST=1'b1;
		#5 RST=1'b0;
		#100 $finish;
	end
    always #5 CLK<=~CLK;
endmodule

