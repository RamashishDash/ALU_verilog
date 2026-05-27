module test_bench;
    wire [3:0]a,b;
    wire [3:0]s,c;

    logic_moduls DUT(.a(a),.b(b),.s(s),.c(c));

    initial begin
        a = 4'b0111
        b = 4'b1000

        $m

    end

    
endmodule