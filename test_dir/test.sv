class my_comp extends uvm_component;
	`uvm_component_utils(my_comp)

	function void new(input string path="my_comp", parent=null);
		super.new(path,parent);
	endfunction

endclass

function build_phase(uvm_phase, phase);
	super.build_phase(phase);
endfunction

function connect_phase(uvm_phase, phase);
	 super.connect_phase(phase);
endfunction


