; This is not a valid whitespace program, but it shows why the other works :)

; Prints "n: "
push 110 outc
push  58 outc	
push  32 outc

; Reads number of Fibonacci iterations and store at cell 200
push 200 readn

; Initialize stack
push  1 	
push  1 	

; Main loop
mark 0000

; Outputs top number followed by a newline
dup outn	
push 10 outc	

; Copies top number to memory cell 100
dup    
push 100 swap
store

; Adds numbers, loads copy at cell 100, swap them.
add
push 100 load	
swap

; Loads number of iterations from cell 200, decrement it
push 200 load
push 1 sub

; Jump to the end if number of iterations is zero
dup jzero 1111
; Otherwise, store it back in cell 200 and jump to main loop
push 200 swap store
jump 0000

; End mark.
mark 1111				
exit
