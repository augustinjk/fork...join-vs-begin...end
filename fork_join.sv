module fork_join_block;
  reg [2:0] data;
  reg [3:0] A;
  
 initial begin
    fork 
        data = 0;
        data = #5 1;
        data = #10 2;
    join
  $display("\tAt time: %0tns, data = %d", $time, data);
end
endmodule

//OUTPUT:
/*
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
	At time: 10ns, data = 2
xmsim: *W,RNQUIE: Simulation is complete.
*/

/*You may notice that in fork..join block the $display executes at time 10ns, not at 0 sim time. This is because the fork...join block 
executes the statements parallely and when all the statements within the fork..join gets complete, then only the other statements which
are out of the fork..join block will gets executed. 

'And this is one of the reason that fork...join is "non-synthesizable" block'

*/
