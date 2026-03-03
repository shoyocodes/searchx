.data

array: .zero 1024

.text

.globl main

 

main:

   la s0, array

   li t0, 0

   li t1, 256

 

init_loop:

   bge t0, t1, init_done

   slli t2, t0, 2

   add t3, s0, t2

   sw t0, 0(t3)

   addi t0, t0, 1

   j init_loop

 

init_done:

   li a0, 40

   jal jump_search

   li a7, 10

   ecall

 

 

jump_search:

 

   li t1, 256

   li t2, 0

   li t3, 4

 

 

 

 

jump_loop:

   add t4, t2, t3

   bge t4, t1, linear_phase

 

   slli t5, t4, 2

   add t5, s0, t5

   lw t6, 0(t5)

 

   blt t6, a0, next_jump

   j linear_phase

 

next_jump:

   mv t2, t4

   j jump_loop

 

linear_phase:

   add t4, t2, t3

   bge t4, t1, fix_end

   j linear_loop

 

fix_end:

   mv t4, t1

 

linear_loop:

   bge t2, t4, not_found

 

   slli t5, t2, 2

   add t5, s0, t5

   lw t6, 0(t5)

 

   beq t6, a0, found

 

   addi t2, t2, 1

   j linear_loop

 

found:

   mv a0, t2

   jr ra

 

not_found:

   li a0, -1

   jr ra
