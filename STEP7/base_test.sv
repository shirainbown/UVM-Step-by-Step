class base_test extends uvm_test;
   my_env env;
   my_sequence seq;
   function new(string name = "base_test", uvm_component parent = null);
      super.new(name, parent);
      env = my_env::type_id::create("env", this);
      seq = my_sequence::type_id::create("seq");
   endfunction

   virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
   endfunction


   virtual task deliver();
      if (env == null || env.i_agt.sqr == null) begin
         `uvm_fatal("DELIVER", "Environment or sequencer not initialized!");
      end
      if (seq == null) begin
         `uvm_fatal("DELIVER", "Sequence not initialized!");
      end
         `uvm_info(get_name(), "Starting sequence via deliver method", UVM_LOW);
      seq.start(env.i_agt.sqr);
      `uvm_info(get_name(), "Sequence execution completed", UVM_LOW);
   endtask

   `uvm_component_utils(base_test)
endclass