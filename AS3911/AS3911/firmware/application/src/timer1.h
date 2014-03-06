/* 
 * File:   timer1.h
 * Author: H.K
 *
 * Created on March 5, 2014, 11:08 AM
 */

#ifndef TIMER1_H
#define	TIMER1_H

#ifdef	__cplusplus
extern "C" {
#endif

void timer1_init(void);
void timeout_start(u8 delayMS);
void timeout_stop(void);
u8 timeout_done(void);


#ifdef	__cplusplus
}
#endif

#endif	/* TIMER1_H */

