/*
 *****************************************************************************
 * Copyright by ams AG                                                       *
 * All rights are reserved.                                                  *
 *                                                                           *
 * IMPORTANT - PLEASE READ CAREFULLY BEFORE COPYING, INSTALLING OR USING     *
 * THE SOFTWARE.                                                             *
 *                                                                           *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS       *
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT         *
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS         *
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT  *
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,     *
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT          *
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,     *
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY     *
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT       *
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE     *
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.      *
 *****************************************************************************
 */

/*
 * PROJECT: AS3911 firmware
 * $Revision: $
 * LANGUAGE: ANSI C
 */
/*! \file
 *
 * \author Christian Eisendle
 *
 * \brief AS3911 firmware main function.
 *
 * Initializes the evaluation board and AS3911 and then
 * starts the GUI command dispatcher.
 */
/*!
  \mainpage
  This firmware is targetted to run on a Microchip PIC24FJ64GB002. It 
  includes a driver for AS3911 and provides proper functions over USB to a GUI.
  The protocols it supports are currently:
  <ul>
    <li> ISO14443A
    <li> Mifare-Ultralight
    <li> ISO14443B
    <li> ISO15693
    <li> ISO18092 (NFC-IP1)
    <li> FeliCa
  </ul>
  Others like Topaz are supported by AS3911 but not yet by this firmware.
  Using \link as3911_stream.h stream mode \endlink it is also possible to
  support other protols not directly supported by AS3911 like ISO15693.

  In the following page the following topics will be detailed:
  <ul>
    <li> \ref Layering
    <li> \ref Startup
    <li> \ref Operation
    <li> \ref Porting
    <li> \ref Resources
  </ul>
  \section Layering
  This system is layered as follows:

  <table align="center" cellpadding=20 cellspacing=0 rules="none">
  <tr>
      <td align="center" colspan=13 bgcolor="#34AAFF">AS3911 GUI</td>
  </tr>
  <tr>
      <td align="center" colspan=13 bgcolor="#78AAFC">\link usb_hid_stream_driver.h USB\endlink</td>
  </tr>
  <tr>
      <td align="center" colspan=13 bgcolor="#FC6666">\link dispatcher.c Dispatcher\endlink</td>
  </tr>
  <tr>
      <td align="center" colspan=6 bgcolor="#FC6666">&nbsp;</td>
      <td align="center" bgcolor="#FC99BB">\link mifare_ul.h Mifare Ultralight\endlink</td>
      <td align="center" colspan=6 bgcolor="#FC6666">&nbsp;</td>
  </tr>
  <tr>
      <td align="center" colspan=6 bgcolor="#FC6666">&nbsp;</td>
      <td align="center" colspan=2 bgcolor="#EEEEEE">\link iso14443_common.h ISO14443 Common\endlink</td>
      <td align="center" colspan=5 bgcolor="#FC6666">&nbsp;</td>
  </tr>
  <tr>
      <td align="center" colspan=2 rowspan=2 bgcolor="#FC6666">&nbsp;</td>
      <td align="center" colspan=1 rowspan=2 bgcolor="#777777">\link topaz.h Topaz \endlink </td>
      <td align="center" colspan=1 rowspan=2 bgcolor="#888888">\link mifare.h MiFare \endlink <br> \link mifare.h Classic \endlink</td>
      <td align="center" colspan=1 rowspan=2 bgcolor="#CCCCCC">\link felica.h FeliCa\endlink</td>
      <td align="center" colspan=2 rowspan=2 bgcolor="#DDDDDD">\link iso14443a.h ISO14443a\endlink</td>
      <td align="center" colspan=2 rowspan=2 bgcolor="#ECEEBC">\link iso14443b.h ISO14443b\endlink</td>
      <td align="center" colspan=2 rowspan=2 bgcolor="#FCFE9C">\link nfc.h NFC\endlink</td>
      <td align="center" colspan=2 bgcolor="#EFA8A5">\link iso15693_3.h ISO15693-3\endlink</td>
  </tr>
  <tr>
      <td align="center" colspan=2 bgcolor="#8FEA8A">\link iso15693_2.h ISO15693-2\endlink</td>
  </tr>
  <tr>
      <td align="center" bgcolor="#FC6666">&nbsp;</td>
      <td align="center" colspan=10 bgcolor="#ACFC9C">\link as3911.h AS3911 Driver\endlink</td>
      <td align="center" colspan=2 rowspan=1 bgcolor="#7AFF14">\link as3911_stream.h Stream Mode\endlink</td>
  </tr>
  <tr>
      <td align="center" colspan=13 bgcolor="#7AAF14">\link as3911_com.h AS3911 Communication\endlink</td>
  </tr>
  <tr>
      <td align="center" colspan=13 bgcolor="#1AAF14">\link spi_driver.h SPI\endlink</td>
  </tr>
  <tr>
      <td align="center" colspan=13 bgcolor="#1A7F14">AS3911 RFID Reader Chip</td>
  </tr>
  <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
  </tr>
  </table>

  There are some more additional modules which are used by most of the modules listed above. They
  have a supporting function and can therefore not be listed within the layering model. These modules are:
  - \link delay.h Delay module\endlink
  - \link clock.h Clock handling module \endlink
  - \link board.h Board specific configuration \endlink
  - \link crc.h CRC calculation module \endlink
  - \link ic.h Interrupt controller module\endlink

  \section Porting
  In the above diagram all layers between(including) Dispatcher and AS3911 Communication don't need to be touched.
  User who wish to port this firmware as is to another microcontroller need to modifiy the following files:
  <ul>
    <li> main.c 
    <li> Files coming from Microchip:
      <ul>
        <li>usb_device.c    
        <li>usb_device.h    
        <li>usb_function_generic.c  
        <li>usb_function_generic.h  
        <li>usb_function_hid.c  
        <li>usb_function_hid.h  
        <li>usb_hal_pic24.c 
        <li>usb_hal_pic24.h 
      </ul>
    <li>timer.c
    <li>beep.c
    <li>board.c
    <li>clock.c
    <li>delay.c
    <li>ic.c
    <li>irq_table.c
    <li>logger.c
    <li>spi_driver.c
    <li>uart.c
    <li>as3911_interrupt.c
  </ul>
  All other as3911* and RFID protocol files don't need to be touched.


  \section Startup Board startup
  On startup and after executing the internal startup code of the Microcontroller,
  function main in file main.c is called. Purpose of this function is to initialize
  the required modules so they can be used later on by the application. The initialization
  is divided into the following parts:
  - Initialization of the clock driver (#clkInitialize). At this point the controller
    runs from internal clock.
  - GPIO and Pin configuration (#boardInitialize). Since the used controller has a PPS unit
    (peripheral pin select) which allows multplexing the controller's peripherals to different IO's,
    this pps unit of course needs to be configured for proper work of the system.
  - Configuring used timers (#delayInitialize). Most of the protocols require
    specific delays which should be quite accurate. Therefore delay functions
    are implemented using timers (1 32bit timer for milliseconds delay and 1 16 bit
    timer for microseconds delay).
  - Setting up the interrupt controller (#icInitialize). The current system uses
    three interrupt sources: External AS3911 interrupt line
    (refer to \link as3911_interrupt.c\endlink), USB interrupt and timer 5 interrupt
    which is used by the #delayNMilliSeconds functions to allow
    system sleep while delaying.
  - Configuration of SPI (#spiInitialize). Since the AS3911 is connected to the
    controller via SPI the SPI module needs to be configured prior to any AS3911 calls.
  After these steps, AS3911 is powered up and configured (#as3911Initialize). 
  From this time on the controller can use the clock generated by the AS3911. 

  \section Operation
  After startup the application enters the main loop. Within the main loop the
  \link dispatcher.c module\endlink checks for any received \link usb_hid_stream_driver.h USB\endlink data.
  If received data contains a valid command, this command is \link dispatcher.c dispatched\endlink. 

  So the main function looks like this:
  \code
int main(void)
{
    // init functions as above....

    while (1)
    {
        ProcessIO(); // perform USB processing provided by Microchip USB stack

        dispatcherInterruptHandler();
    }
}
  \endcode

  The main call graph looks like this:

  \dot
  digraph main_loop{
      subgraph clusterDispatcher
      { 
          label="dispatcher.c";
          applProcessCommand [label="applProcessCommand()"];
          processCommand [label="processCommand()"];
          processProtocols [label="processProtocols()"];
          processISO14443A [label="processISO14443A()"];
          processISO14443B [label="processISO14443B()"];
          processISO15693 [label="processISO15693()"];
      }
  USBStream [label="usb_hid_stream_driver",shape=box];
  ProcessIO [label="ProcessIO()"];
  USBStack [label="USBStack from Microchip"];
  init [label="",shape=plaintext];
  init -> ProcessIO;
  USBStack [shape=box];
  ProcessIO ->  USBStack;
  USBStack ->  USBStream;
  USBStream ->  applProcessCommand;
  applProcessCommand -> processCommand;
  processCommand->processProtocols;
  processProtocols->processISO14443A;
  processProtocols->processISO14443B;
  processProtocols->processISO15693;
  }
  \enddot

  \section Resources
  This firmware is built for PIC24FJ64B002. Other PIC24FJ processors should be easy to be ported.
  
  Build environment.
  <ul>
    <li> Cygwin is used for processing Makefiles. Using MPLAB X 
         should be no problem but user must create a proper project file.
         Non-standard cygwin tools which need to be installed:
         <ul>
           <li>make
           <li>doxygen
           <li>graphviz (for graphs in doxygen documentation): Please see 
               <a href="http://sourceware.org/cygwinports/">http://sourceware.org/cygwinports/</a>
               to install graphviz from their repository.
         </ul>
    <li> The used compiler is MPLAB C30. It must be specified be specified via 
         environment variables: c30dir=C:\\MPLABC30/
    <li> doxygen is used for generating this documentation you currently read
  </ul>

  Currently this firmware needs the following processor resources. Be aware that this 
  can be cut down by removing protocols, buffers, stacks, etc.

  \verbinclude linker_stdout.txt

  Detailed analysis of compiled files, library code from C30 compiler is not included:

  \verbinclude as3911_sizes.txt

*/
/*
******************************************************************************
* INCLUDES
******************************************************************************
*/
#define USE_AND_OR
#include <adc.h>
#include <PPS.h>
#include "uart2.h"
#include "spi_driver.h"
#include "clock.h"
#include "delay.h"
#include "as3911.h"
#include "as3911_com.h"
#include "as3911_interrupt.h"
#include "board.h"
#include "ic.h"
#include "utils.h"
#include "mifare_ul.h"
#include "iso14443a.h"
#include "iso14443_common.h"
#include "uart_state.h"
#include <stdio.h>
#include <string.h>
#include <libpic30.h>
/*
******************************************************************************
* GLOBAL MACROS
******************************************************************************
*/

#define BULK_DEBUG 0

#ifdef HAS_BOOTLOADER
extern void _resetPRI();
u16 bltappId __attribute__ ((space(prog), section(".blid"))) = 0xBAAE;
u16 bluserReset __attribute__ ((space(prog), section(".bladdr"))) = (u16)_resetPRI;
#else
_CONFIG1(WDTPS_PS1 & FWPSA_PR32 & WINDIS_OFF & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2(POSCMOD_NONE & I2C1SEL_PRI & IOL1WAY_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_FRCPLL & PLL96MHZ_ON & PLLDIV_NODIV & IESO_ON)   // OSCIOFNC_ON: get RA3 as digital I/O
_CONFIG3(WPFP_WPFP0 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)   // SOSCSEL_IO: get RA4 and RB4 as digital I/O
_CONFIG4(DSWDTPS_DSWDTPS3 & DSWDTOSC_LPRC & RTCOSC_SOSC & DSBOREN_OFF & DSWDTEN_OFF)
#endif

void INTERRUPT _AddressError(void)
{
    INTCON1 = 0;
    while(1);
}

/*
******************************************************************************
* GLOBAL FUNCTIONS
******************************************************************************
*/
umword IRQ_COUNT; /*!< global interrupt count */

/*
******************************************************************************
* GLOBAL FUNCTIONS
******************************************************************************
*/
#define FW_VERSION_1ST_CHAR 0
#define FW_VERSION_2ND_CHAR 1
#define FW_VERSION_3RD_CHAR 0

#define FW_VERSION_STRING_LENGTH    3

#define REPLY_DATA_MAX_SIZE 37

#if 0
char uid_string[4][ISO14443A_MAX_UID_LENGTH];
u8 card_cnt;

#define CARD_CNT    card_cnt
#define UID         uid_string
#else
typedef struct{
    u8 uid[4][ISO14443A_MAX_UID_LENGTH];
    u8 card_cnt;
}iso14443ACardInfo_t;

iso14443ACardInfo_t iso14443ACardInfo;

#define CARD_CNT    iso14443ACardInfo.card_cnt
#define UID         iso14443ACardInfo.uid
#endif

const char fw_version[FW_VERSION_STRING_LENGTH] = {FW_VERSION_1ST_CHAR, FW_VERSION_2ND_CHAR, FW_VERSION_3RD_CHAR};
iso14443AProximityCard_t card;
u8 replyBuf[REPLY_DATA_MAX_SIZE];

void tag_scan(void)
{
    s8 err = ERR_NONE;

    CARD_CNT = 0;
    do
    {
        memset(&card, 0, sizeof(card));
        err = iso14443ASelect(ISO14443A_CMD_REQA, &card);
        if(err == ERR_NONE)
        {
            strncpy((char*)(&(UID[CARD_CNT][0])), (const char*)(card.uid), ISO14443A_MAX_UID_LENGTH);
            err = iso14443ASendHlta();
            CARD_CNT++;
        }
    }while((err == ERR_NONE)&&(CARD_CNT < 4));

    as3911ModifyRegister(AS3911_REG_OP_CONTROL, AS3911_REG_OP_CONTROL_tx_en, 0);
    delayNMilliSecondsStart(1);
    as3911ModifyRegister(AS3911_REG_OP_CONTROL, AS3911_REG_OP_CONTROL_tx_en, (AS3911_REG_OP_CONTROL_tx_en | AS3911_REG_OP_CONTROL_en));

    replyBuf[0] = CARD_CNT;
    memcpy(replyBuf + 1, UID, ISO14443A_MAX_UID_LENGTH * CARD_CNT);
    uart_reply(replyBuf, ISO14443A_MAX_UID_LENGTH * CARD_CNT + 1);
}

void tag_select(void)
{

}

void tag_version(void)
{
    uart_reply(fw_version, FW_VERSION_STRING_LENGTH);
}

void tag_read(void)
{
    s8 err;
    u8 i;
    u8 uid[9];

    uart_extract_receive(uid, 0, ISO14443A_MAX_UID_LENGTH);
    for(i = 0; i < CARD_CNT; i++)
    {
        if(!strncmp((const char*)uid, (const char*)(&(UID[i][0])), ISO14443A_MAX_UID_LENGTH))
        {
            asm("nop");
            break;
        }
    }
    if(i == CARD_CNT)
    {   // wrong card id to read
        uart_reply(NULL, 0);
    }
    else
    {
        i = 0;
        err = ERR_NONE;
        do
        {
            if(!strncmp((char*)(card.uid), (const char*)uid, ISO14443A_MAX_UID_LENGTH))
            {   // selected card id
                asm("nop");
                break;
            }
            memset(&card, 0, sizeof(card));
            err = iso14443ASelect(ISO14443A_CMD_REQA, &card);
            if(err == ERR_TIMEOUT)
            {   // no card
                asm("nop");
                break;
            }
            i++;
        }while(err == ERR_NONE && i < CARD_CNT * 2);

        if(i < CARD_CNT * 2)
        {
            u8 actlen;
            u8 address, size;

            uart_extract_receive(&address, 9, 1);
            uart_extract_receive(&size, 10, 1);
            err = mifareUlReadNBytes(address, replyBuf, size, &actlen);
            if(err == ERR_NONE)
            {
                uart_reply(replyBuf, size);
            }
            else
            {
                uart_reply(NULL, 0);
            }
        }
        else
        {   // wrong card id to read
            uart_reply(NULL, 0);
        }
    }
}

void tag_write(void)
{
    s8 err;
    u8 i, j;
    u8 uid[9];

    uart_extract_receive(uid, 0, ISO14443A_MAX_UID_LENGTH);
    for(i = 0; i < CARD_CNT; i++)
    {
        if(!strncmp((char*)uid, (const char*)(&(UID[i][0])), ISO14443A_MAX_UID_LENGTH))
        {
            asm("nop");
            break;
        }
    }
    if(i == CARD_CNT)
    {   // wrong card id to read
        uart_reply(NULL, 0);
    }
    else
    {
        i = 0;
        err = ERR_NONE;
        do
        {
            if(!strncmp((char*)(card.uid), (const char*)uid, ISO14443A_MAX_UID_LENGTH))
            {   // selected card id
                asm("nop");
                break;
            }
            memset(&card, 0, sizeof(card));
            err = iso14443ASelect(ISO14443A_CMD_REQA, &card);
            if(err == ERR_TIMEOUT)
            {   // no card
                asm("nop");
                break;
            }
            i++;
        }while(err == ERR_NONE && i < CARD_CNT * 2);

        if(i < CARD_CNT * 2)
        {
            u8 address, size;
            u8 dat[4];

            uart_extract_receive(&address, 9, 1);
            size = uart_bytecnt() - 10;
            for(j = 0; j < size; j += 4)
            {
                uart_extract_receive(dat, 10 + j, 4);
                err = mifareUlWritePage(address, dat);
                if(err != ERR_NONE)
                {
                    asm("nop");
                    break;
                }
                address++;
            }
            if(err != ERR_NONE)
            {
                dat[0] = 0;
            }
            else
            {
                dat[0] = 1;
            }
            uart_reply(dat, 1);
        }
        else
        {   // wrong card id to read
            uart_reply(NULL, 0);
        }
    }
}

int main(void)
{
    s8 err = ERR_NONE;
    spiConfig_t spiConfig;

    clkInitialize();
    boardInitialize();
    timer1_init();
    delayInitialize();
    boardPeripheralPinInitialize(BOARD_PERIPHERAL_SPI1);
    /* configure spi */
    spiConfig.instance = SPI1;
    spiConfig.frequency = 4000000;
    spiConfig.clockPhase = 0;
    spiConfig.clockPolarity = 0;
    spiInitialize(SYSCLK,&spiConfig, NULL);
    stopWatchInitialize();

    /* globally enable interrupts */
    IRQ_DEC_ENABLE();

    /* enable as3911 interrupt source */
    icEnableInterrupt(IC_SOURCE_AS3911);

    /* note: all peripherals depend on SYSCLK = 13.56MHz (output of AS3911),
       actual SYSCLK is 16MHz though. Therefore, appropriate registers
       in AS3911 needs to be set to switch to 13.56MHz SYSCLK */

    err = as3911Initialize();
    if (ERR_NONE != err)
    {
    }
    else
    {
        u8 reg;
        as3911ReadRegister(AS3911_REG_IC_IDENTITY, &reg);
    }

    /* now as3911 osc output provides 6.78MHz. Change clock tree to make use
       of this clock source. This clock gets multiplied by the internal
       PLL by factor 4 (= 27.12MHz) and divided by 2 afterwards, so SYSCLK
       is 13.56MHz */
    clkSetClockSource(CLK_SOURCE_EXTERNAL);
    delayNMilliSeconds(100);

    boardPeripheralPinInitialize(BOARD_PERIPHERAL_UART2);
    UART2Init();

    err = iso14443AInitialize();
    
    uart_cmd_init(tag_scan, NTAG_SCAN_CMD);
    uart_cmd_init(tag_select, NTAG_SELECT_CMD);
    uart_cmd_init(tag_read, NTAG_READ_CMD);
    uart_cmd_init(tag_write, NTAG_WRITE_CMD);
    uart_cmd_init(tag_version, NTAG_VERSION_CMD);

    while(1)
    {
        uart_process_cmd();
    }

    return 0;
}
