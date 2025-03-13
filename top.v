module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnC, btnR,
    output [15:0] led
    );

    wire [3:0] muxOut;
    wire [1:0] selmux,seldemux;
    assign selmux = {btnU, btnL};
    assign seldemux = {btnR, btnD};

    mux mux(
        .CEO(sw[3:0]),
        .you(sw[7:4]),
        .fred(sw[11:8]),
        .jill(sw[15:12]),
        .sel(selmux),
        .en(1),
        .out(muxOut)
    );
    
    demux demux(
        .in(muxOut),
        .sel(seldemux),
        .en(1),
        .local_lib(led[3:0]),
        .fire(led[7:4]),
        .school(led[11:8]),
        .rib(led[15:12])
    );
    
endmodule
