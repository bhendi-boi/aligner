class apb_reg_access_test extends uvm_test;
    `uvm_component_utils(apb_reg_access_test)

    env environment;
    apb_rw_seq s0;


    function new(string name = "apb_reg_access_test", uvm_component parent);
        super.new(name, parent);
        `uvm_info("Rand Test", "Constructed apb_reg_access_test", UVM_HIGH)
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("APB_REG_ACCESS_TEST", "Build phase apb_reg_access_test",
                  UVM_HIGH)
        environment = env::type_id::create("env", this);
    endfunction

    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        phase.raise_objection(this);

        s0 = apb_rw_seq::type_id::create("s0");
        s0.start(environment.apb_agent.sequencer);

        #100;
        phase.drop_objection(this);
    endtask

endclass


