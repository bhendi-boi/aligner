## How to run

### Compile

```bash
vlog +acc -sv testbench.sv design.sv
```

### Start the simulation

- set the uvmcontrol option to all to allow for verbosity changes.
- use `run 0` before using `uvm setverbosity UVM_HIGH`

```bash
vsim -uvmcontrol=all work.tb
```
