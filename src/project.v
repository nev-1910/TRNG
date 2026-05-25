`default_nettype none

module project (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire ena,
    input  wire clk,
    input  wire rst_n
);

wire osc_signal;
wire sampled_signal;
wire processed_signal;
wire error_flag;
wire [31:0] random_data;
wire ready;

ring_oscillator ro1 (
    .osc_out(osc_signal)
);

sampler s1 (
    .clk(clk),
    .osc_signal(osc_signal),
    .sampled_bit(sampled_signal)
);

post_processor pp1 (
    .bit1(sampled_signal),
    .bit2(~sampled_signal),
    .processed_bit(processed_signal)
);

health_checker hc1 (
    .clk(clk),
    .bit_in(processed_signal),
    .error_flag(error_flag)
);

output_register or1 (
    .clk(clk),
    .random_bit(processed_signal),
    .random_data(random_data),
    .ready(ready)
);

assign uo_out = random_data[7:0];

assign uio_out = {7'b0, ready};

assign uio_oe = 8'b00000001;

wire _unused = &{ena, rst_n, uio_in, ui_in, random_data[31:8], error_flag};

endmodule
