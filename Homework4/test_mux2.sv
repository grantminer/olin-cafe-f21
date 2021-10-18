module test_mux2;
    logic [1:0] in;
    logic ena;
    wire out;

    mux2 UUT(.ena(ena), .in(in), .out(out));

    initial begin
        $dumpfile("mux4.vcd");
        $dumpvars(0, UUT);

        $display("ena | in | out");

        for (int i = 0; i < 2; i = i + 1) begin
            ena = i;
            for (int j = 0; j < 4; j = j + 1) begin
                in = j;
                #2 $display("%1b | %2b | %1b", ena, in, out);
            end
        end
        $finish;
    end
endmodule