`default_nettype none

module ring_oscillator (
    input wire clk,
    input wire rst_n,
    output reg osc_out
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        osc_out <= 0;
    else
        osc_out <= ~osc_out;
end

endmodule
