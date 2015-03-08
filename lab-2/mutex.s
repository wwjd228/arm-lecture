	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1 @ define locked 1
	.equ unlocked, 0 @ define unlocked 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
        @ INSERT CODE BELOW
	ldr r1, =locked @ r1 = 1 
.L1:
	ldrex r2, [r0] @ load content of mutex
	cmp r2, #0 @ whether [r0] content locked or not
	strexeq r2, r1, [r0] @ if [r0] is unlocked then lock
	cmpeq r2, #0 @ whether strexeq success or not
	bne .L1 @ if faliure then go to .L1
        @ END CODE INSERT
	bx lr

	.size lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	@ INSERT CODE BELOW
        ldr r1, =unlocked @ r1 = unlocked 
	str r1, [r0] @ [r0] unlock
        @ END CODE INSERT
	bx lr
	.size unlock_mutex, .-unlock_mutex

	.end
