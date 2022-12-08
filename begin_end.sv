module begin_end_block;
  reg [2:0] data;
  reg [3:0] A;
  
initial begin 
        A = 0;
        A = #5 1;
        A = #10 2;
    end
initial begin
     $display("\tAt time: %0tns, A = %d", $time, A);
end
  
endmodule

//OUTPUT:
/*
xcelium> source /xcelium20.09/tools/xcelium/files/xmsimrc
xcelium> run
	At time: 0ns, A =  0
xmsim: *W,RNQUIE: Simulation is complete.
*/
