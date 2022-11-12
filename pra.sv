hello 






//create dynamic array of 100 unique elements 

class dyn_arr;
rand bit a[];
constraint c1{a.size()==100;}
constraint c2{foreach(a[i]) a[i]=unique(a[]);}
endclass


//What is the value of ‘a’ printed in the code? If we replace $display() with $monitor()?

module tb;
int a;

initial begin
a=0;
a<=1;
end

initial begin
$display("a=%0d",a);
end
endmodule

o/p:
$display --> a=0;
$monitor --> a=1;

//Create a packet consists of 3 dynamic arrays a, b & c such that each of 8 bits and size between 15 to 25. The value in the arrays is 1 to 200. The values in array ‘a’ & ‘b’ must not be same and the result of the values of ‘a’ & ‘b’ array must be saved in c array but in reverse order. Odd numbers are not used in first array and the even numbers are used in second array. This must be done by randomization.

module tb;
class pkt;
	rand bit [7:0] a[], b[], c[];
	constraint size_abc{a.size inside {[15:25]};
			    b.size inside {[15:25]};
			    c.size inside {[15:25]};
		    }
	constraint value_a{foreach(a[i])
				a[i] inside {[1:100]};
		}
	constraint value_a_even {foreach(a[i])
					a[i]%2==0;
			}


//Write a constraint for the array[100] to generate values in the range from 1 to 50.

rand bit [7:0] array[100];
constraint val {foreach(array[i] array inside {[1:50]};}


//If I want 20 value in some random indexes how will you write the constraint.





//I have a memory depth of 4, if that address lanes are interchanged, how will you debug?

	write from frontdoor read from backdoor


//write to generate only 200 coverage bins for the signal address [31:0] for values in the range 0 to 99.

covergroup cg;
	c1:coverpoint addr{bins b1[200] = [0:999]};
endgroup






