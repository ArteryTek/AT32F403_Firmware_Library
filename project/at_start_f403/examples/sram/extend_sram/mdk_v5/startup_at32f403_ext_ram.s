;**************************************************************************
;* @file     startup_at32f403.s
;* @version  v2.0.2
;* @date     2022-05-20
;* @brief    at32f403 startup file for keil
;**************************************************************************
;

; Amount of memory (in bytes) allocated for Stack
; Tailor this value to your application needs
; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Stack_Size      EQU     0x00000400

                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp

; <h> Heap Configuration
;   <o>  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Heap_Size       EQU     0x00000200

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit

                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset
                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

__Vectors       DCD     __initial_sp                        ; Top of Stack
                DCD     Reset_Handler                       ; Reset Handler
                DCD     NMI_Handler                         ; NMI Handler
                DCD     HardFault_Handler                   ; Hard Fault Handler
                DCD     MemManage_Handler                   ; MPU Fault Handler
                DCD     BusFault_Handler                    ; Bus Fault Handler
                DCD     UsageFault_Handler                  ; Usage Fault Handler
                DCD     0                                   ; Reserved
                DCD     0                                   ; Reserved
                DCD     0                                   ; Reserved
                DCD     0                                   ; Reserved
                DCD     SVC_Handler                         ; SVCall Handler
                DCD     DebugMon_Handler                    ; Debug Monitor Handler
                DCD     0                                   ; Reserved
                DCD     PendSV_Handler                      ; PendSV Handler
                DCD     SysTick_Handler                     ; SysTick Handler

                ; External Interrupts
                DCD     WWDT_IRQHandler                     ; Window Watchdog Timer
                DCD     PVM_IRQHandler                      ; PVM through EXINT Line detect
                DCD     TAMPER_IRQHandler                   ; Tamper
                DCD     RTC_IRQHandler                      ; RTC
                DCD     FLASH_IRQHandler                    ; Flash
                DCD     CRM_IRQHandler                      ; CRM
                DCD     EXINT0_IRQHandler                   ; EXINT Line 0
                DCD     EXINT1_IRQHandler                   ; EXINT Line 1
                DCD     EXINT2_IRQHandler                   ; EXINT Line 2
                DCD     EXINT3_IRQHandler                   ; EXINT Line 3
                DCD     EXINT4_IRQHandler                   ; EXINT Line 4
                DCD     DMA1_Channel1_IRQHandler            ; DMA1 Channel 1
                DCD     DMA1_Channel2_IRQHandler            ; DMA1 Channel 2
                DCD     DMA1_Channel3_IRQHandler            ; DMA1 Channel 3
                DCD     DMA1_Channel4_IRQHandler            ; DMA1 Channel 4
                DCD     DMA1_Channel5_IRQHandler            ; DMA1 Channel 5
                DCD     DMA1_Channel6_IRQHandler            ; DMA1 Channel 6
                DCD     DMA1_Channel7_IRQHandler            ; DMA1 Channel 7
                DCD     ADC1_2_IRQHandler                   ; ADC1 & ADC2
                DCD     USBFS_H_CAN1_TX_IRQHandler          ; USB High Priority or CAN1 TX
                DCD     USBFS_L_CAN1_RX0_IRQHandler         ; USB Low  Priority or CAN1 RX0
                DCD     CAN1_RX1_IRQHandler                 ; CAN1 RX1
                DCD     CAN1_SE_IRQHandler                  ; CAN1 SE
                DCD     EXINT9_5_IRQHandler                 ; EXINT Line [9:5]
                DCD     TMR1_BRK_TMR9_IRQHandler            ; TMR1 Brake and TMR9
                DCD     TMR1_OVF_TMR10_IRQHandler           ; TMR1 overflow and TMR10
                DCD     TMR1_TRG_HALL_TMR11_IRQHandler      ; TMR1 Trigger and hall and TMR11
                DCD     TMR1_CH_IRQHandler                  ; TMR1 channel
                DCD     TMR2_GLOBAL_IRQHandler              ; TMR2
                DCD     TMR3_GLOBAL_IRQHandler              ; TMR3
                DCD     TMR4_GLOBAL_IRQHandler              ; TMR4
                DCD     I2C1_EVT_IRQHandler                 ; I2C1 Event
                DCD     I2C1_ERR_IRQHandler                 ; I2C1 Error
                DCD     I2C2_EVT_IRQHandler                 ; I2C2 Event
                DCD     I2C2_ERR_IRQHandler                 ; I2C2 Error
                DCD     SPI1_IRQHandler                     ; SPI1
                DCD     SPI2_IRQHandler                     ; SPI2
                DCD     USART1_IRQHandler                   ; USART1
                DCD     USART2_IRQHandler                   ; USART2
                DCD     USART3_IRQHandler                   ; USART3
                DCD     EXINT15_10_IRQHandler               ; EXINT Line [15:10]
                DCD     RTCAlarm_IRQHandler                 ; RTC Alarm through EXINT Line
                DCD     USBFSWakeUp_IRQHandler              ; USB Wakeup from suspend
                DCD     TMR8_BRK_TMR12_IRQHandler           ; TMR8 Brake and TMR12
                DCD     TMR8_OVF_TMR13_IRQHandler           ; TMR8 overflow and TMR13
                DCD     TMR8_TRG_HALL_TMR14_IRQHandler      ; TMR8 Trigger and hall and TMR14
                DCD     TMR8_CH_IRQHandler                  ; TMR8 channel
                DCD     ADC3_IRQHandler                     ; ADC3
                DCD     XMC_IRQHandler                      ; XMC
                DCD     SDIO1_IRQHandler                    ; SDIO1
                DCD     TMR5_GLOBAL_IRQHandler              ; TMR5
                DCD     SPI3_IRQHandler                     ; SPI3
                DCD     UART4_IRQHandler                    ; UART4
                DCD     UART5_IRQHandler                    ; UART5
                DCD     TMR6_GLOBAL_IRQHandler              ; TMR6
                DCD     TMR7_GLOBAL_IRQHandler              ; TMR7
                DCD     DMA2_Channel1_IRQHandler            ; DMA2 Channel1
                DCD     DMA2_Channel2_IRQHandler            ; DMA2 Channel2
                DCD     DMA2_Channel3_IRQHandler            ; DMA2 Channel3
                DCD     DMA2_Channel4_5_IRQHandler          ; DMA2 Channel4 & Channel5
                DCD     SDIO2_IRQHandler                    ; SDIO2
                DCD     I2C3_EVT_IRQHandler                 ; I2C3 Event
                DCD     I2C3_ERR_IRQHandler                 ; I2C3 Error
                DCD     SPI4_IRQHandler                     ; SPI4
                DCD     TMR15_BRK_IRQHandler                ; TMR15 Brake
                DCD     TMR15_OVF_IRQHandler                ; TMR15 overflow
                DCD     TMR15_TRG_HALL_IRQHandler           ; TMR15 Trigger and hall
                DCD     TMR15_CH_IRQHandler                 ; TMR15 channel
__Vectors_End

__Vectors_Size  EQU  __Vectors_End - __Vectors

                AREA    |.text|, CODE, READONLY

; Reset handler
Reset_Handler   PROC
                EXPORT  Reset_Handler                       [WEAK]
                IMPORT  __main
                IMPORT  SystemInit
; add for extend sram
                IMPORT  extend_sram
                MOV32   R0, #0x20001000
                MOV     SP, R0
                LDR     R0, =extend_sram
                BLX     R0
                MOV32   R0, #0x08000000
                LDR     SP, [R0]

                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =__main
                BX      R0
                ENDP

; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler     PROC
                EXPORT  NMI_Handler                         [WEAK]
                B       .
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler                   [WEAK]
                B       .
                ENDP
MemManage_Handler\
                PROC
                EXPORT  MemManage_Handler                   [WEAK]
                B       .
                ENDP
BusFault_Handler\
                PROC
                EXPORT  BusFault_Handler                    [WEAK]
                B       .
                ENDP
UsageFault_Handler\
                PROC
                EXPORT  UsageFault_Handler                  [WEAK]
                B       .
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler                         [WEAK]
                B       .
                ENDP
DebugMon_Handler\
                PROC
                EXPORT  DebugMon_Handler                    [WEAK]
                B       .
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler                      [WEAK]
                B       .
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler                     [WEAK]
                B       .
                ENDP

Default_Handler PROC

                EXPORT  WWDT_IRQHandler                     [WEAK]
                EXPORT  PVM_IRQHandler                      [WEAK]
                EXPORT  TAMPER_IRQHandler                   [WEAK]
                EXPORT  RTC_IRQHandler                      [WEAK]
                EXPORT  FLASH_IRQHandler                    [WEAK]
                EXPORT  CRM_IRQHandler                      [WEAK]
                EXPORT  EXINT0_IRQHandler                   [WEAK]
                EXPORT  EXINT1_IRQHandler                   [WEAK]
                EXPORT  EXINT2_IRQHandler                   [WEAK]
                EXPORT  EXINT3_IRQHandler                   [WEAK]
                EXPORT  EXINT4_IRQHandler                   [WEAK]
                EXPORT  DMA1_Channel1_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel2_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel3_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel4_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel5_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel6_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel7_IRQHandler            [WEAK]
                EXPORT  ADC1_2_IRQHandler                   [WEAK]
                EXPORT  USBFS_H_CAN1_TX_IRQHandler          [WEAK]
                EXPORT  USBFS_L_CAN1_RX0_IRQHandler         [WEAK]
                EXPORT  CAN1_RX1_IRQHandler                 [WEAK]
                EXPORT  CAN1_SE_IRQHandler                  [WEAK]
                EXPORT  EXINT9_5_IRQHandler                 [WEAK]
                EXPORT  TMR1_BRK_TMR9_IRQHandler            [WEAK]
                EXPORT  TMR1_OVF_TMR10_IRQHandler           [WEAK]
                EXPORT  TMR1_TRG_HALL_TMR11_IRQHandler      [WEAK]
                EXPORT  TMR1_CH_IRQHandler                  [WEAK]
                EXPORT  TMR2_GLOBAL_IRQHandler              [WEAK]
                EXPORT  TMR3_GLOBAL_IRQHandler              [WEAK]
                EXPORT  TMR4_GLOBAL_IRQHandler              [WEAK]
                EXPORT  I2C1_EVT_IRQHandler                 [WEAK]
                EXPORT  I2C1_ERR_IRQHandler                 [WEAK]
                EXPORT  I2C2_EVT_IRQHandler                 [WEAK]
                EXPORT  I2C2_ERR_IRQHandler                 [WEAK]
                EXPORT  SPI1_IRQHandler                     [WEAK]
                EXPORT  SPI2_IRQHandler                     [WEAK]
                EXPORT  USART1_IRQHandler                   [WEAK]
                EXPORT  USART2_IRQHandler                   [WEAK]
                EXPORT  USART3_IRQHandler                   [WEAK]
                EXPORT  EXINT15_10_IRQHandler               [WEAK]
                EXPORT  RTCAlarm_IRQHandler                 [WEAK]
                EXPORT  USBFSWakeUp_IRQHandler              [WEAK]
                EXPORT  TMR8_BRK_TMR12_IRQHandler           [WEAK]
                EXPORT  TMR8_OVF_TMR13_IRQHandler           [WEAK]
                EXPORT  TMR8_TRG_HALL_TMR14_IRQHandler      [WEAK]
                EXPORT  TMR8_CH_IRQHandler                  [WEAK]
                EXPORT  ADC3_IRQHandler                     [WEAK]
                EXPORT  XMC_IRQHandler                      [WEAK]
                EXPORT  SDIO1_IRQHandler                    [WEAK]
                EXPORT  TMR5_GLOBAL_IRQHandler              [WEAK]
                EXPORT  SPI3_IRQHandler                     [WEAK]
                EXPORT  UART4_IRQHandler                    [WEAK]
                EXPORT  UART5_IRQHandler                    [WEAK]
                EXPORT  TMR6_GLOBAL_IRQHandler              [WEAK]
                EXPORT  TMR7_GLOBAL_IRQHandler              [WEAK]
                EXPORT  DMA2_Channel1_IRQHandler            [WEAK]
                EXPORT  DMA2_Channel2_IRQHandler            [WEAK]
                EXPORT  DMA2_Channel3_IRQHandler            [WEAK]
                EXPORT  DMA2_Channel4_5_IRQHandler          [WEAK]
                EXPORT  SDIO2_IRQHandler                    [WEAK]
                EXPORT  I2C3_EVT_IRQHandler                 [WEAK]
                EXPORT  I2C3_ERR_IRQHandler                 [WEAK]
                EXPORT  SPI4_IRQHandler                     [WEAK]
                EXPORT  TMR15_BRK_IRQHandler                [WEAK]
                EXPORT  TMR15_OVF_IRQHandler                [WEAK]
                EXPORT  TMR15_TRG_HALL_IRQHandler           [WEAK]
                EXPORT  TMR15_CH_IRQHandler                 [WEAK]

WWDT_IRQHandler
PVM_IRQHandler
TAMPER_IRQHandler
RTC_IRQHandler
FLASH_IRQHandler
CRM_IRQHandler
EXINT0_IRQHandler
EXINT1_IRQHandler
EXINT2_IRQHandler
EXINT3_IRQHandler
EXINT4_IRQHandler
DMA1_Channel1_IRQHandler
DMA1_Channel2_IRQHandler
DMA1_Channel3_IRQHandler
DMA1_Channel4_IRQHandler
DMA1_Channel5_IRQHandler
DMA1_Channel6_IRQHandler
DMA1_Channel7_IRQHandler
ADC1_2_IRQHandler
USBFS_H_CAN1_TX_IRQHandler
USBFS_L_CAN1_RX0_IRQHandler
CAN1_RX1_IRQHandler
CAN1_SE_IRQHandler
EXINT9_5_IRQHandler
TMR1_BRK_TMR9_IRQHandler
TMR1_OVF_TMR10_IRQHandler
TMR1_TRG_HALL_TMR11_IRQHandler
TMR1_CH_IRQHandler
TMR2_GLOBAL_IRQHandler
TMR3_GLOBAL_IRQHandler
TMR4_GLOBAL_IRQHandler
I2C1_EVT_IRQHandler
I2C1_ERR_IRQHandler
I2C2_EVT_IRQHandler
I2C2_ERR_IRQHandler
SPI1_IRQHandler
SPI2_IRQHandler
USART1_IRQHandler
USART2_IRQHandler
USART3_IRQHandler
EXINT15_10_IRQHandler
RTCAlarm_IRQHandler
USBFSWakeUp_IRQHandler
TMR8_BRK_TMR12_IRQHandler
TMR8_OVF_TMR13_IRQHandler
TMR8_TRG_HALL_TMR14_IRQHandler
TMR8_CH_IRQHandler
ADC3_IRQHandler
XMC_IRQHandler
SDIO1_IRQHandler
TMR5_GLOBAL_IRQHandler
SPI3_IRQHandler
UART4_IRQHandler
UART5_IRQHandler
TMR6_GLOBAL_IRQHandler
TMR7_GLOBAL_IRQHandler
DMA2_Channel1_IRQHandler
DMA2_Channel2_IRQHandler
DMA2_Channel3_IRQHandler
DMA2_Channel4_5_IRQHandler
SDIO2_IRQHandler
I2C3_EVT_IRQHandler
I2C3_ERR_IRQHandler
SPI4_IRQHandler
TMR15_BRK_IRQHandler
TMR15_OVF_IRQHandler
TMR15_TRG_HALL_IRQHandler
TMR15_CH_IRQHandler
                B       .

                ENDP

                ALIGN

;*******************************************************************************
; User Stack and Heap initialization
;*******************************************************************************
                 IF      :DEF:__MICROLIB

                 EXPORT  __initial_sp
                 EXPORT  __heap_base
                 EXPORT  __heap_limit

                 ELSE

                 IMPORT  __use_two_region_memory
                 EXPORT  __user_initial_stackheap

__user_initial_stackheap

                 LDR     R0, = Heap_Mem
                 LDR     R1, = (Stack_Mem + Stack_Size)
                 LDR     R2, = (Heap_Mem +  Heap_Size)
                 LDR     R3, = Stack_Mem
                 BX      LR

                 ALIGN

                 ENDIF

                 END
