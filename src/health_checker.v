`default_nettype none

module health_checker (
    input wire clk,
    input wire bit_in,
    output reg error_flag
);

reg [3:0] count = 0;
reg prev_bit = 0;

always @(posedge clk)
begin
    if(bit_in == prev_bit)
        count <= count + 1;

    else
        count <= 0;

    prev_bit <= bit_in;

    if(count >= 3)
        error_flag <= 1'b1;

    else
        error_flag <= 1'b0;
end

endmodule
