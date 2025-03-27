`include "test_pkg.sv"

module tb ();

    import uvm_pkg::*;
    import test_pkg::*;

    logic clk;

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    abp_intf apb_if (.pclk(clk));

    cfs_aligner dut (
        .clk    (clk),
        .reset_n(apb_if.preset_n),
        .paddr  (apb_if.paddr),
        .pwrite (apb_if.pwrite),
        .psel   (apb_if.psel),
        .penable(apb_if.penable),
        .pwdata (apb_if.pwdata),
        .pready (apb_if.pready),
        .prdata (apb_if.prdata),
        .pslverr(apb_if.pslverr)
    );

    initial begin
        uvm_config_db#(virtual apb_intf)::set(null, "uvm_test_top*", "apb_if",
                                              apb_if);
        run_test("apb_reg_access_test.sv");
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end

endmodule
