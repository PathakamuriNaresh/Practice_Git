class my_comp extends uvm_component;
	`uvm_component_utils(my_comp)

	function new(input string path="my_comp", parent=null);
		super.new(path,parent);
	endfunction

endclass

