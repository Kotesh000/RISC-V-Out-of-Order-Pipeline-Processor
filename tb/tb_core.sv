`timescale 1ns/1ps

module tb_core;

    logic clk;
    logic rst;

    // DUT
    core_top dut (
        .clk(clk),
        .rst(rst)
    );

    // Clock: 100 MHz
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset
    initial begin
        rst = 1'b1;
        #20;
        rst = 1'b0;
    end

    // Run simulation
    initial begin
        #500;
        $finish;
    end

endmodule
