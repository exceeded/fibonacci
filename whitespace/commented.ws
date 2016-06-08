push  110 		 			 
outc	
  push  58 			 	 
outc	
  push  32 	     
outc	
  push  200 		  	   
readn	
		push  1 	
push  1 	
mark
  0000    
dup 
 outn	
 	push  10 	 	 
outc	
  dup 
 push  100 		  	  
swap 
	store		 add	   push  100 		  	  
load			swap 
	push  200 		  	   
load			push  1 	
sub	  	dup 
 jzero
	 1111				
push  200 		  	   
swap 
	store		 jump
 
0000    
mark
  1111				
exit


