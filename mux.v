module mux(
    input [3:0] CEO, you, fred, jill,
    input [1:0] sel,
    input en,
    output [3:0] out
    );
   
    assign out = en ? (sel == 0 ? CEO : (sel == 1 ? you : (sel == 2 ? fred : (sel == 3 ? jill : 0)))) : 0;
    
endmodule
