class pipo_sequencer extends uvm_sequencer#(pipo_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_component_utils(pipo_sequencer)  
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="pipo_sequencer",uvm_component parent);  
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------
  
endclass:pipo_sequencer

