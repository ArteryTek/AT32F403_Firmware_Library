/**
  ******************************************************************************
  * @file     readme.txt
  * @version  v2.0.2
  * @date     2022-05-20
  * @brief    readme
  ******************************************************************************
  */

  this demo is based on the artery ic, in this demo, provides a basic example of how
  to use the xmc  firmware library and  an associate  driver to perform  read/write
  operations on the nor flash.
  usart1 using pa9 to printf the result.

    xmc                         at32f403            nor
  - xmc_d0                      pd14         --->   dq[0]
  - xmc_d1                      pd15         --->   dq[1]
  - xmc_d2                      pd0          --->   dq[2]
  - xmc_d3                      pd1          --->   dq[3]
  - xmc_d4                      pe7          --->   dq[4]
  - xmc_d5                      pe8          --->   dq[5]
  - xmc_d6                      pe9          --->   dq[6]
  - xmc_d7                      pe10         --->   dq[7]
  - xmc_d8                      pe11         --->   dq[8]
  - xmc_d9                      pe12         --->   dq[9]
  - xmc_d10                     pe13         --->   dq[10]
  - xmc_d11                     pe14         --->   dq[11]
  - xmc_d12                     pe15         --->   dq[12]
  - xmc_d13                     pd8          --->   dq[13]
  - xmc_d14                     pd9          --->   dq[14]
  - xmc_d15                     pd10         --->   dq[15]
  - xmc_a0                      pf0          --->   a[0]
  - xmc_a1                      pf1          --->   a[1]
  - xmc_a2                      pf2          --->   a[2]
  - xmc_a3                      pf3          --->   a[3]
  - xmc_a4                      pf4          --->   a[4]
  - xmc_a5                      pf5          --->   a[5]
  - xmc_a6                      pf12         --->   a[6]
  - xmc_a7                      pf13         --->   a[7]
  - xmc_a8                      pf14         --->   a[8]
  - xmc_a9                      pf15         --->   a[9]
  - xmc_a10                     pg0          --->   a[10]
  - xmc_a11                     pg1          --->   a[11]
  - xmc_a12                     pg2          --->   a[12]
  - xmc_a13                     pg3          --->   a[13]
  - xmc_a14                     pg4          --->   a[14]
  - xmc_a15                     pg5          --->   a[15]
  - xmc_a16                     pd11         --->   a[16]
  - xmc_a17                     pd12         --->   a[17]
  - xmc_a18                     pd13         --->   a[18]
  - xmc_a19                     pe3          --->   a[19]
  - xmc_a20                     pe4          --->   a[20]
  - xmc_a21                     pe5          --->   a[21]
  - xmc_a22                     pe6          --->   a[22]
  - xmc_nce2 / xmc_ne1          pd7          --->   ce#
  - xmc_nadv                    pb7          --->   adv#
  - xmc_noe                     pd4          --->   oe#  
  - xmc_nwe                     pd5          --->   we#
  for more detailed information. please refer to the application note document AN0106.