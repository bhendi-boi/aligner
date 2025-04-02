typedef bit [`APB_MAX_ADDR_WIDTH-1:0] apb_addr;
typedef bit [`APB_MAX_DATA_WIDTH-1:0] apb_wdata;
// since it is an output logic
typedef logic [`APB_MAX_DATA_WIDTH-1:0] apb_rdata;
typedef enum bit {
    APB_READ  = 0,
    APB_WRITE = 1
} apb_dir;
