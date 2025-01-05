`ifndef MY_AGENT__SV
`define MY_AGENT__SV

class my_agent extends uvm_agent ;
   my_driver     drv;
   my_monitor    mon;
   //,uvm_active_passive_enum active
   function new(string name, uvm_component parent,uvm_active_passive_enum active=UVM_ACTIVE);
      super.new(name, parent);
      is_active = active;
      if(is_active==UVM_ACTIVE)begin
         drv = my_driver::type_id::create("drv", this);
         `uvm_info("my_agent", "this my_agent has a driver", UVM_LOW);
      end
      mon = my_monitor::type_id::create("mon", this);
         `uvm_info("my_agent", "this my_agent has a my_monitor", UVM_LOW);
   endfunction 
   
   extern virtual function void build_phase(uvm_phase phase);
   extern virtual function void connect_phase(uvm_phase phase);

   `uvm_component_utils(my_agent)
endclass 


function void my_agent::build_phase(uvm_phase phase);
   super.build_phase(phase);
/*   if (is_active == UVM_ACTIVE) begin
       drv = my_driver::type_id::create("drv", this);
   end
   mon = my_monitor::type_id::create("mon", this);*/
endfunction 

function void my_agent::connect_phase(uvm_phase phase);
   super.connect_phase(phase);
endfunction

`endif

