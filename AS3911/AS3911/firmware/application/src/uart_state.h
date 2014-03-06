/* 
 * File:   uart_state.h
 * Author: H.K
 *
 * Created on March 4, 2014, 10:23 AM
 */

#ifndef UART_STATE_H
#define	UART_STATE_H

#include <string.h>
#include "platform.h"
#include "uart2.h"
#include "timer1.h"

#ifdef	__cplusplus
extern "C" {
#endif

/*
******************************************************************************
* GLOBAL DEFINES
******************************************************************************
*/
#define IN_BUFFER_MAX_CNT  42
#define OUT_BUFFER_MAX_CNT  41
#define FIRST_CMD_VALUE 0x18
#define NUMBER_OF_CMD   4

/*
******************************************************************************
* GLOBAL DATATYPES
******************************************************************************
*/
typedef enum
{
    UART_IDLE = 0x0,
    UART_CNT,
    UART_DATA,
    UART_CHECK,
    UART_CAL,
    UART_EXE,
    UART_CMD_ERROR,
    UART_CNT_ERROR,
    UART_CHK_ERROR,
    UART_RESEND,
    UART_CMD_TIMEOUT,
    UART_CNT_TIMEOUT,
    UART_NULL,
}uartState_t;

typedef enum
{
    NTAG_SCAN_CMD = FIRST_CMD_VALUE,
    NTAG_SELECT_CMD,
    NTAG_READ_CMD,
    NTAG_WRITE_CMD,
    NTAG_VERSION_CMD,
    NULL_CMD,
}uartCmd_t;

/*
******************************************************************************
* GLOBAL DEFINES
******************************************************************************
*/
#define NTAG_CMD_ERROR      0xF1
#define NTAG_CNT_ERROR      0xF2
#define NTAG_CHK_ERROR      0xF3
#define NTAG_TIMEOUT_ERROR  0xF4

/*
******************************************************************************
* GLOBAL FUNCTION PROTOTYPES
******************************************************************************
*/
extern void uart_process_data(u8 cmd);
extern void uart_process_cmd(void);
extern void uart_cmd_init(void* func, uartCmd_t cnt);
extern u8 uart_bytecnt(void);
extern void uart_reply(u8* data, u8 cnt);
extern void uart_resend(void);
extern void uart_extract_receive(u8* data, u8 offset, u8 cnt);

#ifdef	__cplusplus
}
#endif

#endif	/* UART_STATE_H */

