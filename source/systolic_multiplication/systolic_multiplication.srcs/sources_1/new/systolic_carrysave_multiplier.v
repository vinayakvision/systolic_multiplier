module systolic_carrysave_multiplier (
    input logic clk,
    input logic reset,
    input logic [1:0] A,
    input logic [1:0] B,
    output logic [3:0] P
);
    // Partial products
    logic [1:0] partial_product [1:0];

    // Partial sums and carries
    logic [3:0] partial_sum;
    logic [3:0] partial_carry;

    // Carry-save addition pipeline
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            partial_sum   <= 4'b0;
            partial_carry <= 4'b0;
            P             <= 4'b0;
        end else begin
            // Compute partial products
            partial_product[0] <= A[0] ? B : 2'b0;
            partial_product[1] <= A[1] ? B : 2'b0;

            // Align partial products
            logic [3:0] pp0 = {2'b00, partial_product[0]};
            logic [3:0] pp1 = {1'b0, partial_product[1], 1'b0};

            // Carry-save addition
            partial_sum   <= pp0 ^ pp1 ^ partial_carry;
            partial_carry <= ( (pp0 & pp1) | (pp0 & partial_carry) | (pp1 & partial_carry) ) << 1;

            // Final summation of partial sum and carry
            P <= partial_sum + partial_carry;
        end
    end
endmodule
