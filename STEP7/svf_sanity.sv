class svf_sanity extends base_test;
   //my_sequence seq;
   `uvm_component_utils(svf_sanity)

   function new(string name = "svf_sanity", uvm_component parent = null);
      super.new(name, parent);
   endfunction

   virtual task main_phase(uvm_phase phase);
      
      phase.raise_objection(this);

       #100;       // 等待 100 时间单位
       deliver();  // 第二次启动 sequence
       #100;
      deliver();
      phase.drop_objection(this);
   endtask

endclass