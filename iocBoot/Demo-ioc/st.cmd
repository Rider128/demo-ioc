#!../../bin/linux-x86_64/demo-ioc

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change demo-ioc to something else
#- everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase "../../dbd/demo-ioc.dbd"
demo_ioc_registerRecordDeviceDriver(pdbbase)

## Load record instances
#dbLoadRecords("../../db/number.db","user=md271228")

dbLoadRecords("${TOP}/db/number.db", "PREFIX=,PORT=PS1")
iocInit()

## Start any sequence programs
#seq sncdemo-ioc,"user=md271228"
