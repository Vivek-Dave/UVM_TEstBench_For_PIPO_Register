
/***************************************************
** class name  : pipo_sequence
** description : generates random input for DUT
***************************************************/
class pipo_sequence extends uvm_sequence#(pipo_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_object_utils(pipo_sequence)            
  //----------------------------------------------------------------------------

  pipo_sequence_item txn;
  int unsigned REPEAT=40;

  //----------------------------------------------------------------------------
  function new(string name="pipo_sequence");  
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  virtual task body();
    repeat(REPEAT) begin 
      txn=pipo_sequence_item::type_id::create("txn");
      start_item(txn);
      txn.randomize();
      txn.rst=0;
      finish_item(txn);
    end
  endtask:body
  //----------------------------------------------------------------------------
endclass:pipo_sequence

/***************************************************
** class name  : reset_sequence
** description : reset DUT
***************************************************/
class reset_sequence extends pipo_sequence;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(reset_sequence)      
  //----------------------------------------------------------------------------
  
  pipo_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="reset_sequence");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=pipo_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.in =0;
    txn.rst=1;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass
