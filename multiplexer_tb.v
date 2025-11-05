//test bench of 4x1 multiplexer

module tb_mux;
    reg [3:0] i;
    reg [1:0] s;
    wire y;

    mux_4to1 uut (i, s, y);

    initial begin
        i = 4'b1010; // Example input

        s = 2'b00; #10;
        $display("s=%b, i=%b, y=%b", s, i, y);

        s = 2'b01; #10;
        $display("s=%b, i=%b, y=%b", s, i, y);

        s = 2'b10; #10;
        $display("s=%b, i=%b, y=%b", s, i, y);

        s = 2'b11; #10;
        $display("s=%b, i=%b, y=%b", s, i, y);

        $finish;
    end
endmodule
