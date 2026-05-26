`default_nettype none

module output_register (
    input wire clk,
    input wire rst_n,
    input wire bit_in,
    output reg [31:0] random_data,
    output reg ready
);

reg [5:0] count;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        random_data <= 32'b0;
        count <= 0;
        ready <= 0;
    end
    else begin

        random_data <= {random_data[30:0], bit_in};

        if (count == 31) begin
            ready <= 1;
            count <= 0;
        end
        else begin
            ready <= 0;
            count <= count + 1;
        end

    end
end

endmodule
