module pipo(in,clk,rst,out);
    input [7:0] in;
    input clk;
    input rst;
    output reg [7:0] out;

    always @(posedge clk) begin
        if(rst==1) begin
            out<=0;
        end
        else begin
            out<=in;
        end
    end

endmodule