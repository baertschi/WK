#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/as3911.c ../src/as3911_com.c ../src/as3911_interrupt.c ../src/as3911_stream.c ../src/board.c ../src/clock.c ../src/crc.c ../src/delay.c ../src/ic.c ../src/iso14443_common.c ../src/iso14443a.c ../src/main.c ../src/mifare_ul.c ../../../../common/firmware/microchip/src/bootloadable.c ../../../../common/firmware/microchip/src/spi_driver.c ../../../../common/firmware/microchip/src/system_clock.c ../src/uart2.c ../src/uart_state.c ../src/timer1.c ../src/utils.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/as3911.o ${OBJECTDIR}/_ext/1360937237/as3911_com.o ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o ${OBJECTDIR}/_ext/1360937237/as3911_stream.o ${OBJECTDIR}/_ext/1360937237/board.o ${OBJECTDIR}/_ext/1360937237/clock.o ${OBJECTDIR}/_ext/1360937237/crc.o ${OBJECTDIR}/_ext/1360937237/delay.o ${OBJECTDIR}/_ext/1360937237/ic.o ${OBJECTDIR}/_ext/1360937237/iso14443_common.o ${OBJECTDIR}/_ext/1360937237/iso14443a.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mifare_ul.o ${OBJECTDIR}/_ext/1933841525/bootloadable.o ${OBJECTDIR}/_ext/1933841525/spi_driver.o ${OBJECTDIR}/_ext/1933841525/system_clock.o ${OBJECTDIR}/_ext/1360937237/uart2.o ${OBJECTDIR}/_ext/1360937237/uart_state.o ${OBJECTDIR}/_ext/1360937237/timer1.o ${OBJECTDIR}/_ext/1360937237/utils.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/as3911.o.d ${OBJECTDIR}/_ext/1360937237/as3911_com.o.d ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d ${OBJECTDIR}/_ext/1360937237/board.o.d ${OBJECTDIR}/_ext/1360937237/clock.o.d ${OBJECTDIR}/_ext/1360937237/crc.o.d ${OBJECTDIR}/_ext/1360937237/delay.o.d ${OBJECTDIR}/_ext/1360937237/ic.o.d ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d ${OBJECTDIR}/_ext/1360937237/iso14443a.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d ${OBJECTDIR}/_ext/1933841525/bootloadable.o.d ${OBJECTDIR}/_ext/1933841525/spi_driver.o.d ${OBJECTDIR}/_ext/1933841525/system_clock.o.d ${OBJECTDIR}/_ext/1360937237/uart2.o.d ${OBJECTDIR}/_ext/1360937237/uart_state.o.d ${OBJECTDIR}/_ext/1360937237/timer1.o.d ${OBJECTDIR}/_ext/1360937237/utils.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/as3911.o ${OBJECTDIR}/_ext/1360937237/as3911_com.o ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o ${OBJECTDIR}/_ext/1360937237/as3911_stream.o ${OBJECTDIR}/_ext/1360937237/board.o ${OBJECTDIR}/_ext/1360937237/clock.o ${OBJECTDIR}/_ext/1360937237/crc.o ${OBJECTDIR}/_ext/1360937237/delay.o ${OBJECTDIR}/_ext/1360937237/ic.o ${OBJECTDIR}/_ext/1360937237/iso14443_common.o ${OBJECTDIR}/_ext/1360937237/iso14443a.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/mifare_ul.o ${OBJECTDIR}/_ext/1933841525/bootloadable.o ${OBJECTDIR}/_ext/1933841525/spi_driver.o ${OBJECTDIR}/_ext/1933841525/system_clock.o ${OBJECTDIR}/_ext/1360937237/uart2.o ${OBJECTDIR}/_ext/1360937237/uart_state.o ${OBJECTDIR}/_ext/1360937237/timer1.o ${OBJECTDIR}/_ext/1360937237/utils.o

# Source Files
SOURCEFILES=../src/as3911.c ../src/as3911_com.c ../src/as3911_interrupt.c ../src/as3911_stream.c ../src/board.c ../src/clock.c ../src/crc.c ../src/delay.c ../src/ic.c ../src/iso14443_common.c ../src/iso14443a.c ../src/main.c ../src/mifare_ul.c ../../../../common/firmware/microchip/src/bootloadable.c ../../../../common/firmware/microchip/src/spi_driver.c ../../../../common/firmware/microchip/src/system_clock.c ../src/uart2.c ../src/uart_state.c ../src/timer1.c ../src/utils.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
Device=PIC24FJ64GB002
ProjectDir="C:\archive\PPB\gitHub\WK\AS3911\AS3911\firmware\application\AS3911_Firmware.X"
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [..\..\..\..\common\Tools\objcopy.exe -I ihex -O binary $(ImagePath) $(ImageDir)\AS3911_Firmware.X.${IMAGE_TYPE}.bin]"
	@..\..\..\..\common\Tools\objcopy.exe -I ihex -O binary $(ImagePath) $(ImageDir)\AS3911_Firmware.X.${IMAGE_TYPE}.bin
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=24FJ64GB002
MP_LINKER_FILE_OPTION=,--script="..\src\p24FJ64GB002.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/as3911.o: ../src/as3911.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911.o.ok ${OBJECTDIR}/_ext/1360937237/as3911.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911.o ../src/as3911.c    
	
${OBJECTDIR}/_ext/1360937237/as3911_com.o: ../src/as3911_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_com.o.ok ${OBJECTDIR}/_ext/1360937237/as3911_com.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_com.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911_com.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911_com.o ../src/as3911_com.c    
	
${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o: ../src/as3911_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.ok ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o ../src/as3911_interrupt.c    
	
${OBJECTDIR}/_ext/1360937237/as3911_stream.o: ../src/as3911_stream.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.ok ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_stream.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911_stream.o ../src/as3911_stream.c    
	
${OBJECTDIR}/_ext/1360937237/board.o: ../src/board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/board.o.ok ${OBJECTDIR}/_ext/1360937237/board.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/board.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/board.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/board.o.d" -o ${OBJECTDIR}/_ext/1360937237/board.o ../src/board.c    
	
${OBJECTDIR}/_ext/1360937237/clock.o: ../src/clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clock.o.ok ${OBJECTDIR}/_ext/1360937237/clock.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/clock.o.d" -o ${OBJECTDIR}/_ext/1360937237/clock.o ../src/clock.c    
	
${OBJECTDIR}/_ext/1360937237/crc.o: ../src/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/crc.o.ok ${OBJECTDIR}/_ext/1360937237/crc.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/crc.o.d" -o ${OBJECTDIR}/_ext/1360937237/crc.o ../src/crc.c    
	
${OBJECTDIR}/_ext/1360937237/delay.o: ../src/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/delay.o.ok ${OBJECTDIR}/_ext/1360937237/delay.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/delay.o.d" -o ${OBJECTDIR}/_ext/1360937237/delay.o ../src/delay.c    
	
${OBJECTDIR}/_ext/1360937237/ic.o: ../src/ic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ic.o.ok ${OBJECTDIR}/_ext/1360937237/ic.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/ic.o.d" -o ${OBJECTDIR}/_ext/1360937237/ic.o ../src/ic.c    
	
${OBJECTDIR}/_ext/1360937237/iso14443_common.o: ../src/iso14443_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.ok ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d" -o ${OBJECTDIR}/_ext/1360937237/iso14443_common.o ../src/iso14443_common.c    
	
${OBJECTDIR}/_ext/1360937237/iso14443a.o: ../src/iso14443a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443a.o.ok ${OBJECTDIR}/_ext/1360937237/iso14443a.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443a.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/iso14443a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/iso14443a.o.d" -o ${OBJECTDIR}/_ext/1360937237/iso14443a.o ../src/iso14443a.c    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.ok ${OBJECTDIR}/_ext/1360937237/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    
	
${OBJECTDIR}/_ext/1360937237/mifare_ul.o: ../src/mifare_ul.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.ok ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mifare_ul.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d" -o ${OBJECTDIR}/_ext/1360937237/mifare_ul.o ../src/mifare_ul.c    
	
${OBJECTDIR}/_ext/1933841525/bootloadable.o: ../../../../common/firmware/microchip/src/bootloadable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1933841525 
	@${RM} ${OBJECTDIR}/_ext/1933841525/bootloadable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933841525/bootloadable.o.ok ${OBJECTDIR}/_ext/1933841525/bootloadable.o.err 
	@${RM} ${OBJECTDIR}/_ext/1933841525/bootloadable.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933841525/bootloadable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1933841525/bootloadable.o.d" -o ${OBJECTDIR}/_ext/1933841525/bootloadable.o ../../../../common/firmware/microchip/src/bootloadable.c    
	
${OBJECTDIR}/_ext/1933841525/spi_driver.o: ../../../../common/firmware/microchip/src/spi_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1933841525 
	@${RM} ${OBJECTDIR}/_ext/1933841525/spi_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933841525/spi_driver.o.ok ${OBJECTDIR}/_ext/1933841525/spi_driver.o.err 
	@${RM} ${OBJECTDIR}/_ext/1933841525/spi_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933841525/spi_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1933841525/spi_driver.o.d" -o ${OBJECTDIR}/_ext/1933841525/spi_driver.o ../../../../common/firmware/microchip/src/spi_driver.c    
	
${OBJECTDIR}/_ext/1933841525/system_clock.o: ../../../../common/firmware/microchip/src/system_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1933841525 
	@${RM} ${OBJECTDIR}/_ext/1933841525/system_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933841525/system_clock.o.ok ${OBJECTDIR}/_ext/1933841525/system_clock.o.err 
	@${RM} ${OBJECTDIR}/_ext/1933841525/system_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933841525/system_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1933841525/system_clock.o.d" -o ${OBJECTDIR}/_ext/1933841525/system_clock.o ../../../../common/firmware/microchip/src/system_clock.c    
	
${OBJECTDIR}/_ext/1360937237/uart2.o: ../src/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart2.o.ok ${OBJECTDIR}/_ext/1360937237/uart2.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart2.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart2.o ../src/uart2.c    
	
${OBJECTDIR}/_ext/1360937237/uart_state.o: ../src/uart_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_state.o.ok ${OBJECTDIR}/_ext/1360937237/uart_state.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_state.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uart_state.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart_state.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart_state.o ../src/uart_state.c    
	
${OBJECTDIR}/_ext/1360937237/timer1.o: ../src/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1.o.ok ${OBJECTDIR}/_ext/1360937237/timer1.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timer1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer1.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer1.o ../src/timer1.c    
	
${OBJECTDIR}/_ext/1360937237/utils.o: ../src/utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utils.o.ok ${OBJECTDIR}/_ext/1360937237/utils.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/utils.o ../src/utils.c    
	
else
${OBJECTDIR}/_ext/1360937237/as3911.o: ../src/as3911.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911.o.ok ${OBJECTDIR}/_ext/1360937237/as3911.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911.o ../src/as3911.c    
	
${OBJECTDIR}/_ext/1360937237/as3911_com.o: ../src/as3911_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_com.o.ok ${OBJECTDIR}/_ext/1360937237/as3911_com.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_com.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911_com.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911_com.o ../src/as3911_com.c    
	
${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o: ../src/as3911_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.ok ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911_interrupt.o ../src/as3911_interrupt.c    
	
${OBJECTDIR}/_ext/1360937237/as3911_stream.o: ../src/as3911_stream.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.ok ${OBJECTDIR}/_ext/1360937237/as3911_stream.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/as3911_stream.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/as3911_stream.o.d" -o ${OBJECTDIR}/_ext/1360937237/as3911_stream.o ../src/as3911_stream.c    
	
${OBJECTDIR}/_ext/1360937237/board.o: ../src/board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/board.o.ok ${OBJECTDIR}/_ext/1360937237/board.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/board.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/board.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/board.o.d" -o ${OBJECTDIR}/_ext/1360937237/board.o ../src/board.c    
	
${OBJECTDIR}/_ext/1360937237/clock.o: ../src/clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clock.o.ok ${OBJECTDIR}/_ext/1360937237/clock.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/clock.o.d" -o ${OBJECTDIR}/_ext/1360937237/clock.o ../src/clock.c    
	
${OBJECTDIR}/_ext/1360937237/crc.o: ../src/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/crc.o.ok ${OBJECTDIR}/_ext/1360937237/crc.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/crc.o.d" -o ${OBJECTDIR}/_ext/1360937237/crc.o ../src/crc.c    
	
${OBJECTDIR}/_ext/1360937237/delay.o: ../src/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/delay.o.ok ${OBJECTDIR}/_ext/1360937237/delay.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/delay.o.d" -o ${OBJECTDIR}/_ext/1360937237/delay.o ../src/delay.c    
	
${OBJECTDIR}/_ext/1360937237/ic.o: ../src/ic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ic.o.ok ${OBJECTDIR}/_ext/1360937237/ic.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/ic.o.d" -o ${OBJECTDIR}/_ext/1360937237/ic.o ../src/ic.c    
	
${OBJECTDIR}/_ext/1360937237/iso14443_common.o: ../src/iso14443_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.ok ${OBJECTDIR}/_ext/1360937237/iso14443_common.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/iso14443_common.o.d" -o ${OBJECTDIR}/_ext/1360937237/iso14443_common.o ../src/iso14443_common.c    
	
${OBJECTDIR}/_ext/1360937237/iso14443a.o: ../src/iso14443a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443a.o.ok ${OBJECTDIR}/_ext/1360937237/iso14443a.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iso14443a.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/iso14443a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/iso14443a.o.d" -o ${OBJECTDIR}/_ext/1360937237/iso14443a.o ../src/iso14443a.c    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.ok ${OBJECTDIR}/_ext/1360937237/main.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    
	
${OBJECTDIR}/_ext/1360937237/mifare_ul.o: ../src/mifare_ul.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.ok ${OBJECTDIR}/_ext/1360937237/mifare_ul.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mifare_ul.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/mifare_ul.o.d" -o ${OBJECTDIR}/_ext/1360937237/mifare_ul.o ../src/mifare_ul.c    
	
${OBJECTDIR}/_ext/1933841525/bootloadable.o: ../../../../common/firmware/microchip/src/bootloadable.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1933841525 
	@${RM} ${OBJECTDIR}/_ext/1933841525/bootloadable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933841525/bootloadable.o.ok ${OBJECTDIR}/_ext/1933841525/bootloadable.o.err 
	@${RM} ${OBJECTDIR}/_ext/1933841525/bootloadable.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933841525/bootloadable.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1933841525/bootloadable.o.d" -o ${OBJECTDIR}/_ext/1933841525/bootloadable.o ../../../../common/firmware/microchip/src/bootloadable.c    
	
${OBJECTDIR}/_ext/1933841525/spi_driver.o: ../../../../common/firmware/microchip/src/spi_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1933841525 
	@${RM} ${OBJECTDIR}/_ext/1933841525/spi_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933841525/spi_driver.o.ok ${OBJECTDIR}/_ext/1933841525/spi_driver.o.err 
	@${RM} ${OBJECTDIR}/_ext/1933841525/spi_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933841525/spi_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1933841525/spi_driver.o.d" -o ${OBJECTDIR}/_ext/1933841525/spi_driver.o ../../../../common/firmware/microchip/src/spi_driver.c    
	
${OBJECTDIR}/_ext/1933841525/system_clock.o: ../../../../common/firmware/microchip/src/system_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1933841525 
	@${RM} ${OBJECTDIR}/_ext/1933841525/system_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933841525/system_clock.o.ok ${OBJECTDIR}/_ext/1933841525/system_clock.o.err 
	@${RM} ${OBJECTDIR}/_ext/1933841525/system_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933841525/system_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1933841525/system_clock.o.d" -o ${OBJECTDIR}/_ext/1933841525/system_clock.o ../../../../common/firmware/microchip/src/system_clock.c    
	
${OBJECTDIR}/_ext/1360937237/uart2.o: ../src/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart2.o.ok ${OBJECTDIR}/_ext/1360937237/uart2.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart2.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart2.o ../src/uart2.c    
	
${OBJECTDIR}/_ext/1360937237/uart_state.o: ../src/uart_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_state.o.ok ${OBJECTDIR}/_ext/1360937237/uart_state.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_state.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uart_state.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart_state.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart_state.o ../src/uart_state.c    
	
${OBJECTDIR}/_ext/1360937237/timer1.o: ../src/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1.o.ok ${OBJECTDIR}/_ext/1360937237/timer1.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timer1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer1.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer1.o ../src/timer1.c    
	
${OBJECTDIR}/_ext/1360937237/utils.o: ../src/utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utils.o.ok ${OBJECTDIR}/_ext/1360937237/utils.o.err 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DUSE_LOGGER=LOGGER_ON -I"../../../../common/firmware/microchip/include" -I"../src" -I"../mifare_src" -O2 -MMD -MF "${OBJECTDIR}/_ext/1360937237/utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/utils.o ../src/utils.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/p24FJ64GB002.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=0$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/p24FJ64GB002.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=0$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/AS3911_Firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
