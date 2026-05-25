`default_nettype none

module sampler (
    input wire clk,
    input wire osc_signal,
    output reg sampled_bit
);

always @(posedge clk)
begin
    sampled_bit <= osc_signal;
end

endmodule
