# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = demo-ioc
# demo-ioc.dbd will be created and installed
DBD += demo-ioc.dbd

# demo-ioc.dbd will be made up from these files:
demo-ioc_DBD += base.dbd

# Include dbd files from all support applications:
#demo-ioc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#demo-ioc_LIBS += xxx

# demo-ioc_registerRecordDeviceDriver.cpp derives from demo-ioc.dbd
demo-ioc_SRCS += demo-ioc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
demo-ioc_SRCS_DEFAULT += demo-iocMain.cpp
demo-ioc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#demo-ioc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
demo-ioc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

