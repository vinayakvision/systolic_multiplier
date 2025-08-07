module tb_systolic_carrysave_multiplier;
    logic clk;
    logic reset;
    logic [1:0] A;
    logic [1:0] B;
    logic [3:0] P;

    systolic_carrysave_multiplier uut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .P(P)
    );

    // Clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        reset = 1;
        #10;
        reset = 0;

        A = 2'b01; B = 2'b10; #10;
        $display("P = %b, Expected = %b", P, A * B);

        A = 2'b11; B = 2'b11; #10;
        $display("P = %b, Expected = %b", P, A * B);

        A = 2'b10; B = 2'b01; #10;
        $display("P = %b, Expected = %b", P, A * B);

        $finish;
    end
endmodule
