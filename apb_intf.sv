`ifndef APB_MAX_DATA_WIDTH
`define APB_MAX_DATA_WIDTH 32
`endif

`ifndef APB_MAX_ADDR_WIDTH
`define APB_MAX_ADDR_WIDTH 32
`endif

interface apb_intf (
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

