	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	mov r4, #-1 @ fn-2 = -1
	mov r5, #1 @ fn-1 = 1
.loop:
	adds r3, r4, r5
	mov r4, r5
	mov r5, r3
	subs r0, #1
	ite lt
	movlt r0, r3
	bge .loop
	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION
	.size fibonacci, .-fibonacci
	.end
