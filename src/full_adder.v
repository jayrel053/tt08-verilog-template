module full_adder ( 
	input wire a, b, carry_in, 
	output wire c, carry_out 
);

‘ifdef COCOTB_SIM 
  initial begin 
	$dumpfile
		 (# "waves_tb_full_ adder.vcd"); 
	$dumpvars;
  end 
‘endif 

assign {carry_out, c} = 
	a + b + carry_in; 
endmodule
