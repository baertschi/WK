/*
 * File:   timer1.c
 * Author: H.K
 *
 * Created on March 5, 2014, 10:40 AM
 */

/*
******************************************************************************
* INCLUDES
******************************************************************************
*/
#include "platform.h"
#include "board.h"

static u8 delay_cnt, delay_tick;

void timer1_init(void)
{
#define CPU_OSC_FREQ_HZ         8000000L
#define PERIPHERAL_CLOCK        (4 * CPU_OSC_FREQ_HZ / 2)
#define INSTRUCTION_CLOCK       (4 * CPU_OSC_FREQ_HZ / 2)

#define TIMER1_CLK_SOURCE (PERIPHERAL_CLOCK)
#define TIMER1_PRESCALE   64

#if (TIMER1_PRESCALE==256)   //11 = 1:256  //TCKPS<1:0>: Timer1 Input Clock Prescale Select bits
    #define TXCON_TCKPS 0x0030
#elif (TIMER1_PRESCALE==64)  //10 = 1:64   //TCKPS<1:0>: Timer1 Input Clock Prescale Select bits
    #define TXCON_TCKPS 0x0020
#elif (TIMER1_PRESCALE==8)   //01 = 1:8    //TCKPS<1:0>: Timer1 Input Clock Prescale Select bits
    #define TXCON_TCKPS 0x0010
#elif (TIMER1_PRESCALE==1)   //00 = 1:1    //TCKPS<1:0>: Timer1 Input Clock Prescale Select bits
    #define TXCON_TCKPS 0x0000
#else
    #error Timer1 Prescaler is not defined
#endif

#define TIMER1_100ms      10
#define TIMER1_10ms       100
#define TMR1_100ms_VALUE  ((TIMER1_CLK_SOURCE / TIMER1_PRESCALE) / (TIMER1_100ms))
#define TMR1_10ms_VALUE  ((TIMER1_CLK_SOURCE / TIMER1_PRESCALE) / (TIMER1_10ms))

    // 0 = Continue module operation when device enters Idle mode
    // clear the prescale bits bit4 bit5
    T1CON = 0x0000;

    T1CON |= TXCON_TCKPS ;
    PR1 = TMR1_10ms_VALUE;
    IPC0bits.T1IP = 7;
    IFS0bits.T1IF = 0;
    IEC0bits.T1IE = 0;
    T1CONbits.TON = 0;
}

void timer1_turnOnOff(u8 OnOff)
{
    IFS0bits.T1IF = 0;
    if(OnOff)
    {
        IEC0bits.T1IE = 1;
        T1CONbits.TON = 1;
    }
    else
    {
        IEC0bits.T1IE = 0;
        T1CONbits.TON = 0;
    }
}

void __attribute__((interrupt,auto_psv)) _T1Interrupt()
{
    IFS0bits.T1IF = 0;// Timer 1 interrupt flag CLEARED
    if(delay_tick < delay_cnt)
    {
        delay_tick++;
    }
}

void timeout_start(u8 delayMS)
{
    delay_cnt = delayMS;
    delay_tick = 0;
    timer1_turnOnOff(1);
}

void timeout_stop(void)
{
    timer1_turnOnOff(0);
}

u8 timeout_done(void)
{
    return (delay_tick == delay_cnt);
}


