module registrador (dado, clock, habilita_escrita, saida);
  input [15:0] dado;
  input clock, habilita_escrita;
  output reg [15:0] saida;
  
  reg [15:0] q;
  
  always@(posedge clock)
  begin
    if(habilita_escrita)
    begin
      q <= dado;
    end
    else
    begin
      saida <= q;
    end
  end
endmodule
