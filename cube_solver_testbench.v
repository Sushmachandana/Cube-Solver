module cube_solver_tb;
// Inputs
reg clk;
reg rst;
reg start;
// Outputs
wire [3:0] move;
wire done;
// Instantiate the cube_solver module
cube_solver uut (
.clk(clk),
.rst(rst),
.start(start),
.move(move),
.done(done)
);
// Clock generation
initial begin
clk = 0;
forever #5 clk = ~clk; // 10 time units period
end
// Initial block to apply test vectors
initial begin
// Initialize inputs
rst = 0;
start = 0;
#10;
// Apply reset
rst = 1;
#10;
rst = 0;
#10;
// Start the solver
$display("Starting the solver");
start = 1;
#10;
start = 0;
// Wait for the solver to finish
wait (done == 1);
$display("Solver finished with move: %0d", move);
// End simulation
$finish;
end
// Monitor state changes
initial begin
$monitor("Time: %0t | State: %0d | Move: %0d | Done: %0d", $time, uut.state, move,
done);
end
endmodule
