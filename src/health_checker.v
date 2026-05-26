`default_nettype none

module health_checker (
    input wire clk,
    input wire rst_n,
    input wire bit_in,
    output reg error_flag
);

reg [3:0] count;
reg prev_bit;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        count <= 0;
        prev_bit <= 0;
        error_flag <= 0;
    end
    else begin

        if (bit_in == prev_bit)
            count <= count + 1;
        else
            count <= 0;

        prev_bit <= bit_in;

        if (count > 8)
            error_flag <= 1;
        else
            error_flag <= 0;

    end
end

endmodule
