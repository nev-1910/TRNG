`default_nettype none

module post_processor (
    input wire bit1,
    input wire bit2,
    output reg processed_bit
);

always @(*)
begin
    if(bit1 == 1'b0 && bit2 == 1'b1)
        processed_bit = 1'b0;

    else if(bit1 == 1'b1 && bit2 == 1'b0)
        processed_bit = 1'b1;

    else
        processed_bit = 1'b0;
end

endmodule
