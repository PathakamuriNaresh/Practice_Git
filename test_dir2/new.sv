class comp1 extends uvm_component;
	`uvm_component_utils(comp1)

	function void new(input string path="comp1", parent=null);
		super.new(path,parent);
	endfunction
