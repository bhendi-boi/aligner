class apb_rw_seq extends uvm_sequence #(apb_transaction);
    `uvm_object_utils(apb_rw_seq)

    apb_transaction tr;

    function new(string name = "apb_rw_seq");
        super.new(name);
        `uvm_info("Dummy sequence", "Constructed apb_rw_seq", UVM_HIGH)
    endfunction

    task body();
        tr = apb_transaction::type_id::create("tr");

        start_item(tr);
        if (!tr.randomize() with {
                dir == 1;
                addr inside {32'h0, 32'hC, 32'hF0, 32'hF4};
            })
            `uvm_fatal("APB_RW_Seq", "Randomisation failed")
        finish_item(tr);

        // read
        start_item(tr);
        if (!tr.randomize() with {
                dir == 0;
                addr inside {32'h0, 32'hC, 32'hF0, 32'hF4};
            })
            `uvm_fatal("APB_RW_Seq", "Randomisation failed")
        finish_item(tr);
    endtask

endclass
