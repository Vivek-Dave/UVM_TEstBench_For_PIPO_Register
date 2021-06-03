
interface intf(input bit clk);
    // ------------------- port declaration-------------------------------------
    logic       rst;
    logic [7:0]  in;
    logic [7:0] out;
    //--------------------------------------------------------------------------

    //------------- clocking & modport declaration -----------------------------
    clocking cb @(posedge clk);
      default input #1step output #2;
      output rst,in;  //input of DUT
      input  out;     //output of DUT
    endclocking

    //--------------------------------------------------------------------------
        
endinterface

