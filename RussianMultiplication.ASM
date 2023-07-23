setup:
	MOV R0, #5	; First number to multiply
	MOV R1, #9	; Second number to multiply

	MOV R3, #0	; Register to store the total

start:
	LSR R0, R0, #1	; Half R0
	AND R2, R0, #1	; Store result of bitwise AND of R0 and #1 to R2
	CMP R2, #0	; Check if R2 is 0 (even)
	BNE skip	; If not even, then skip

	ADD R3, R3, R1	; If even, add R1 to R3 (the total)

skip:
	LSL R1, R1, #1	; Double R1
	CMP R0, #0	; Check if R0 is zero yet
	BNE start	; If not, go again
	STR R3, 100
	END