`timescale 1 ps / 100 fs

module MIPSStimulus();

parameter ClockDelay = 5000;

reg clk,reset;


MIPSpipeline  myMIPS(clk, reset);

initial clk = 0;
always #(ClockDelay/2) clk = ~clk;

initial 
begin
   reset = 1;
  #(ClockDelay/4);
  reset = 0;
end
endmodule