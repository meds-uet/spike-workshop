	.file	"code.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0_zcd1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	power
	.type	power, @function
power:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	fsd	fa0,-40(s0)
	mv	a5,a0
	sw	a5,-44(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fsd	fa5,-24(s0)
	sw	zero,-28(s0)
	j	.L2
.L3:
	fld	fa4,-24(s0)
	fld	fa5,-40(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	fld	fa5,-24(s0)
	fmv.d	fa0,fa5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	power, .-power
	.section	.rodata
	.align	3
.LC2:
	.string	"%.2f raised to the power %d is %.2f\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC1)
	fld	fa5,%lo(.LC1)(a5)
	fsd	fa5,-24(s0)
	li	a5,3
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a0,a5
	fld	fa0,-24(s0)
	call	power
	fmv.x.d	a4,fa0
	lw	a5,-28(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a1,-24(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	0
	.word	1073741824
	.ident	"GCC: () 15.1.0"
	.section	.note.GNU-stack,"",@progbits
