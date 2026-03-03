.data

array:  .zero 1024

 

.text

.globl main

 

main:

   la   s0, array

   li   t0, 0

   li   t1, 256

   

init_loop:

   bge  t0, t1, init_done

   slli t2, t0, 2

   add  t3, s0, t2

   sw   t0, 0(t3)

   addi t0, t0, 1

   j    init_loop

 

init_done:

   la   a0, array

   li   a1, 256

   li   a2, 115

   jal  binary_search

   

   li   a7, 10

   ecall

 

binary_search:

   li   t0, 0

   addi t1, a1, -1

 

search_loop:

   bge  t0, t1, not_found

 

   add  t2, t0, t1

   srai t2, t2, 1

 

   slli t4, t2, 2

   add  t4, a0, t4

   lw   t3, 0(t4)

 

   beq  t3, a2, found

   blt  t3, a2, go_right

 

   addi t1, t2, -1

   j    search_loop

 

go_right:

   addi t0, t2, 1

   j    search_loop

 

found:

   mv   a0, t2

   jr   ra

 

not_found:

   li   a0, -1

   jr   ra

 

 
