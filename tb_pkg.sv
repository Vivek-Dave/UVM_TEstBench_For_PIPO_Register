
`ifndef TB_PKG
`define TB_PKG
`include "uvm_macros.svh"
package tb_pkg;
 import uvm_pkg::*;
 `include "pipo_sequence_item.sv"        // transaction class
 `include "pipo_sequence.sv"             // sequence class
 `include "pipo_sequencer.sv"            // sequencer class
 `include "pipo_driver.sv"               // driver class
 `include "pipo_monitor.sv"
 `include "pipo_agent.sv"                // agent class  
 `include "pipo_coverage.sv"             // coverage class
 `include "pipo_scoreboard.sv"           // scoreboard class
 `include "pipo_env.sv"                  // environment class

 `include "pipo_test.sv"                 // test1
 //`include "test2.sv"
 //`include "test3.sv"

endpackage
`endif 


