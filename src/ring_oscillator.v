`default_nettype none

module ring_oscillator (
    output wire osc_out
);

reg clk_reg;

initial begin
    clk_reg = 0;
end

always #5 clk_reg = ~clk_reg;

assign osc_out = clk_reg;

endmodule
