/*
 * File:   uart_state.c
 * Author: H.K
 *
 * Created on March 4, 2014, 10:23 AM
 */

#include "uart_state.h"

/*
******************************************************************************
* LOCAL VARIABLES
******************************************************************************
*/
static uartState_t uartState = UART_IDLE;
static uartCmd_t uartCmd;
static u8 uartByteCnt = 0;
static u8 uartCheckSum;
static u8 uartByteInc = 0;
static u8 uartData[IN_BUFFER_MAX_CNT];
static u8 replyData[OUT_BUFFER_MAX_CNT];

static void (*uart_command[NULL_CMD])(void);
/*
******************************************************************************
* GLOBAL FUNCTIONS
******************************************************************************
*/

void uart_process_data(u8 cmd)
{
    if(uartState == UART_IDLE)
    {
        if(cmd >= NTAG_SCAN_CMD && cmd <= NTAG_VERSION_CMD)
        {
            timeout_start(4);
            uartCmd = cmd;
            uartState = UART_CNT;
        }
        else if(cmd == NTAG_CMD_ERROR || cmd == NTAG_CNT_ERROR || cmd == NTAG_CHK_ERROR)
        {
            uartState = UART_RESEND;
        }
        else
        {
            uartState = UART_CMD_TIMEOUT; // command error
            timeout_start(3);
        }
    }
    else if(uartState == UART_CNT)
    {
        uartByteCnt = cmd;
        if(uartCmd == NTAG_SCAN_CMD)
        {
            if(uartByteCnt != 0)
            {
                uartState = UART_CNT_TIMEOUT;
//                timeout_start(2);
            }
            else
            {
                uartState = UART_CHECK;
            }
        }
        else if(uartCmd == NTAG_SELECT_CMD)
        {
            if(uartByteCnt != 9)
            {
                uartState = UART_CNT_TIMEOUT;
//                timeout_start(2);
            }
            else
            {
                uartState = UART_DATA;
//                timeout_start(2);
                uartByteInc = 0;
            }
        }
        else if(uartCmd == NTAG_READ_CMD)
        {
            if(uartByteCnt != 11)
            {
                uartState = UART_CNT_TIMEOUT;
//                timeout_start(2);
            }
            else
            {
                uartState = UART_DATA;
//                timeout_start(2);
                uartByteInc = 0;
            }
        }
        else if(uartCmd == NTAG_WRITE_CMD)
        {
            if(uartByteCnt < 14 && uartByteCnt > 42)
            {
                uartState = UART_CNT_TIMEOUT;
//                timeout_start(2);
            }
            else
            {
                uartState = UART_DATA;
//                timeout_start(3);
                uartByteInc = 0;
            }
        }
        else if(uartCmd == NTAG_VERSION_CMD)
        {
            if(uartByteCnt != 0)
            {
                uartState = UART_CNT_TIMEOUT;
//                timeout_start(2);
            }
            else
            {
                uartState = UART_CHECK;
            }
        }
    }
    else if(uartState == UART_DATA)
    {
        if(uartByteCnt)
        {
            uartData[uartByteInc] = cmd;
            uartByteInc++;
            if(uartByteCnt == uartByteInc)  // time-out to be added for this condition being not met
            {
                uartState = UART_CHECK;
                uartByteInc = 0;
            }
        }
    }
    else if(uartState == UART_CHECK)
    {
        uartCheckSum = cmd;
        uartState = UART_CAL;  // null state to temperory reject incoming data
        timeout_stop(); // all data received
    }
}

void uart_process_cmd(void)
{
    if(uartState == UART_CAL)  // calculate checksum
    {
        u8 i, checksum;

        checksum = uartByteCnt;
        if(uartByteCnt)
        {
            for(i = 0; i < uartByteCnt; i++)
            {
                checksum ^= uartData[i];
            }
        }
        checksum ^= uartCmd;
        if(uartCheckSum != checksum)
        {
            uartState = UART_CHK_ERROR;
        }
        else
        {
            uartState = UART_EXE;
        }
    }
    else if(uartState == UART_EXE)
    {
        (*uart_command[(uartCmd - FIRST_CMD_VALUE)])();
        uartState = UART_IDLE;
    }
    else if(uartState == UART_CMD_TIMEOUT)
    {
        if(timeout_done())
        {
            u8 tmp;

            UART2PutChar(NTAG_CMD_ERROR);
            tmp = U2RXREG;
            IFS1bits.U2RXIF = 0;
            IEC1bits.U2RXIE = 1;
            uartState = UART_IDLE;
        }
    }
    else if(uartState == UART_CNT_TIMEOUT)
    {
        if(timeout_done())
        {
            u8 tmp;

            UART2PutChar(NTAG_CNT_ERROR);
            tmp = U2RXREG;
            IFS1bits.U2RXIF = 0;
            IEC1bits.U2RXIE = 1;
            uartState = UART_IDLE;
        }
    }
    else if(uartState == UART_CMD_ERROR)
    {
        UART2PutChar(NTAG_CMD_ERROR);
        uartState = UART_IDLE;
    }
    else if(uartState == UART_CNT_ERROR)
    {
        UART2PutChar(NTAG_CNT_ERROR);
        uartState = UART_IDLE;
    }
    else if(uartState == UART_CHK_ERROR)
    {
        UART2PutChar(NTAG_CHK_ERROR);
        uartState = UART_IDLE;
    }
    else if(uartState == UART_RESEND)
    {
        uart_resend();
        uartState = UART_IDLE;
    }
    else if(uartState != UART_IDLE)
    {
        if(timeout_done())
        {
            UART2PutChar(NTAG_TIMEOUT_ERROR);
            uartState = UART_IDLE;
        }
    }
}

void uart_reply(u8* data, u8 cnt)
{
    u8 i, chksum;

    memset(replyData, 0, OUT_BUFFER_MAX_CNT);
    chksum = 0;
    replyData[0] = uartCmd;
    replyData[1] = cnt;
    if(cnt)
    {
        memcpy(replyData + 2, data, cnt);
        for(i = 0; i < cnt + 2; i++)
        {
            chksum ^= replyData[i];
        }
        replyData[i] = chksum;
        for(i = 0; i < cnt + 3; i++)
        {
            UART2PutChar(replyData[i]);
        }
    }
    else
    {
        replyData[2] = uartCmd;
        UART2PutChar(replyData[0]);
        UART2PutChar(replyData[1]);
        UART2PutChar(replyData[2]);
    }
}

void uart_resend(void)
{
    u8 i = 0;

    for(i = 0; i < replyData[1] + 3; i++)
    {
        UART2PutChar(replyData[i]);
    }

}

u8 uart_bytecnt(void)
{
    return uartByteCnt;
}

void uart_cmd_init(void* func, uartCmd_t cnt)
{
    uart_command[cnt - FIRST_CMD_VALUE] = func;
}

void uart_extract_receive(u8* data, u8 offset, u8 cnt)
{
    memcpy(data, uartData + offset, cnt);
}
