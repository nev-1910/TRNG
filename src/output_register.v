`default_nettype none

module output_register (
    input wire clk,
    input wire random_bit,
    output reg [31:0] random_data,
    output reg ready
);

reg [5:0] count = 0;

always @(posedge clk)
begin
    random_data <= {random_data[30:0], random_bit};

    if(count < 32)
    begin
        count <= count + 1;
        ready <= 1'b0;
    end

    else
    begin
        ready <= 1'b1;
    end
end

endmodule
