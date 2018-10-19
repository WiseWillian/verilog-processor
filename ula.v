module ula(a, b, controle, s);
	input [15:0] a, b;
	input [1:0] controle;
	output reg [15:0] s;
	
	always@*
	begin
		case(controle)
			2'b00: s = a + b;
			2'b01: s = a | b;
			2'b10: s = a & b;
			2'b11: s = ~a;
		endcase
	end
endmodule