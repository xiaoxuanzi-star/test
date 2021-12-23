module counter_6(
        input CLK,
        input RST,
        output reg [2:0] CNT
        );
        parameter MAX=3'b101;
        always @(posedge RST,posedge CLK)
        begin
            if(RST)
            begin
                CNT<=3'b000;
            end
            else
            begin
                if(CNT==MAX)
                begin
                    CNT<=3'b000;
                end
                else
                begin
                    CNT<=CNT+3'b001;
                end
            end
        end

endmodule
