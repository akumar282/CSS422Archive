		;		left   right  value
node1	DCD		0x10C, 0x130, 4
node2	DCD		0x118, 0x124, 2
node3	DCD		0,     0,     1
node4	DCD		0,     0,     3
node5	DCD		0x13C, 0x148, 6
node6	DCD		0,     0,     5
node7	DCD		0,     0,     7
		
		LDR		R0, =8
		LDR		R1, =0x100
loop		CMP		R1, #0	 	;check if null
		BEQ		lend			;if null branch to end
		LDR		R2, [R1, #8]	;load value into r2
		CMP		R2, R0		;compare value of node and value to search
		LDRGT	R1, [R1]		;if greater than
		LDRLT	R1, [R1, #4]   ;if less than
		BNE		loop			;repeat loop when not found
		ADD		R1, R1, #8	;point to value in node
lend
		END		;end when end
		
		
		
		
		
