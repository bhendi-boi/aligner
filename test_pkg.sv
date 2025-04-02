`include "uvm_macros.svh"
`include "./apb_pkg.sv"

package test_pkg;
    import uvm_pkg::*;
    import apb_pkg::*;

    `include "env.sv"
    `include "apb_reg_access_test.sv"

endpackage
