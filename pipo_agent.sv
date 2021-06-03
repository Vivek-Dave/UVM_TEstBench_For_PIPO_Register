
class pipo_agent extends uvm_agent;

  //----------------------------------------------------------------------------
  `uvm_component_utils(pipo_agent)
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="pipo_agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------

  //----------------- class handles --------------------------------------------
  pipo_sequencer sequencer_h;
  pipo_driver    driver_h;
  pipo_monitor   monitor_h;
  //----------------------------------------------------------------------------

  //---------------------- build phase -----------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    driver_h    = pipo_driver::type_id::create("driver_h",this);
    sequencer_h = pipo_sequencer::type_id::create("sequencer_h",this);
    monitor_h   = pipo_monitor::type_id::create("monitor_h",this);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------- connect phase --------------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    driver_h.seq_item_port.connect(sequencer_h.seq_item_export);
  endfunction
  //----------------------------------------------------------------------------

endclass:pipo_agent

