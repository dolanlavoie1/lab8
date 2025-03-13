module demux(
    input [3:0] in,
    input [1:0] sel,
    input en,
    output [3:0] local_lib, fire, school, rib
    );
    
    assign local_lib = en ? (sel == 0 ? in : 0) : 0;
    assign fire = en ? (sel == 1 ? in : 0) : 0;
    assign school = en ? (sel == 2 ? in : 0) : 0;
    assign rib = en ? (sel == 3 ? in : 0) : 0;
    
endmodule
