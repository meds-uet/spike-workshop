// i wrote manually , while code.s
.data
x_val:      .double 2.0         # double x = 2.0
one:        .double 1.0         # for result initialization

.text
.globl main
main:
    # Load x (2.0) into f1 (f1 --> x)
    la t0, x_val
    fld f1, 0(t0)

    # Load 1.0 into f2 (f2 --> result)
    la t1, one
    fld f2, 0(t1)

    # Set loop counter t2 = 0 (t2 --> i)
    li t2, 0

    # Set n = 3 in t3  (t3 --> n)
    li t3, 3

power:
    bge t2, t3, done      # if i >= n, exit loop
    fmul.d f2, f2, f1           # result *= x
    addi t2, t2, 1              # i++
    j power

done:
    # Convert double f2 to integer in a0
    fcvt.w.d a0, f2, rtz        # convert double to int (round toward zero)

    li a7, 93                   # exit syscall for Spike
    ecall

