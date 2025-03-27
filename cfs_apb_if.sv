///////////////////////////////////////////////////////////////////////////////
// File:        cfs_apb_if.sv
// Author:      Cristian Florin Slav
// Date:        2023-07-05
// Description: APB interface.
///////////////////////////////////////////////////////////////////////////////


`ifndef CFS_APB_MAX_DATA_WIDTH
`define CFS_APB_MAX_DATA_WIDTH 32
`endif

`ifndef CFS_APB_MAX_ADDR_WIDTH
`define CFS_APB_MAX_ADDR_WIDTH 32
`endif

interface cfs_apb_if (
    input pclk
);

    logic preset_n;
    logic [`CFS_APB_MAX_ADDR_WIDTH-1:0] paddr;
    logic pwrite;
    logic psel;
    logic penable;
    logic [`CFS_APB_MAX_DATA_WIDTH-1:0] pwdata;
    logic pready;
    logic [`CFS_APB_MAX_DATA_WIDTH-1:0] prdata;
    logic pslverr;

endinterface

