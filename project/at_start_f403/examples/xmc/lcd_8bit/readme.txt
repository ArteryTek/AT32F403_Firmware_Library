/**
  **************************************************************************
  * @file     readme.txt 
  * @version  v2.0.1
  * @date     2022-04-02
  * @brief    readme
  **************************************************************************
  */

  this example provides a basic example of how to use the xmc firmware library and
	an associate driver to perform read/write operations on the lcd. the lcd drive ic
	is st7789v and  will display some number, it's actually showing pictures. this 
	example support 100pin and 144pin package at the same time.
  
	the pin to pin with lcd and xmc:
	gpio      pb10    lcd_reset
	xmc_a0    pf0     lcd_rs
	xmc_ne1   pd7     lcd_cs
	xmc_nwe   pd5     lcd_wr 
	xmc_noe   pd4     lcd_rd 
	xmc_d0	  pd14	  data[0]
	xmc_d1	  pd15	  data[1]
	xmc_d2	  pd0	    data[2]
	xmc_d3	  pd1	    data[3]
	xmc_d4	  pe7	    data[4]
	xmc_d5	  pe8	    data[5]
	xmc_d6	  pe9	    data[6]
	xmc_d7	  pe10	  data[7]	


