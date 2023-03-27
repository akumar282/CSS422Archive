src		DCB		'a', 'b', 'd', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 0
dst		DCB		0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  0
		
begin
		LDR		R0, =src
		LDR		R1, =dst
loop
		LDRB		R3, [R0], #1
		CMP		R3, #0
		BEQ		stop
		SUB		R3, R3, #0x20
		STRB		R3, [R1], #1
		B		loop
stop
		END
