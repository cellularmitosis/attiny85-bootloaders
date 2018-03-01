#!/bin/bash

set -e

cpu=128000L
for baud in 1200 2400 
do
    USINGMAKEFILES=Makefile.attinyx5 BAUD_RATE=$baud AVR_FREQ=$cpu ./makeall
done

cpu=1000000L
for baud in 1200 2400 4800 9600 
do
    USINGMAKEFILES=Makefile.attinyx5 BAUD_RATE=$baud AVR_FREQ=$cpu ./makeall
done

cpu=8000000L
for baud in 9600 19200 38400 57600 115200
do
    USINGMAKEFILES=Makefile.attinyx5 BAUD_RATE=$baud AVR_FREQ=$cpu ./makeall
done

cpu=16000000L
for baud in 19200 38400 57600 115200
do
    USINGMAKEFILES=Makefile.attinyx5 BAUD_RATE=$baud AVR_FREQ=$cpu ./makeall
done

cpu=20000000L
for baud in 19200 38400 57600 115200
do
    USINGMAKEFILES=Makefile.attinyx5 BAUD_RATE=$baud AVR_FREQ=$cpu ./makeall
done
