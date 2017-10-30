TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=====================================================
# Path to "NON EPICS" External PACKAGES: USER INCLUDES
#======================================================

# Support Perl C regular expression library
USR_INCLUDES += -I$(PCRE_INCLUDE)

#======================================================
# PATH TO "NON EPICS" EXTERNAL PACKAGES: USER LIBRARIES
#======================================================

pcre_DIR = $(PCRE_LIB)

# ======================================================
# LINK "NON EPICS" EXTERNAL PACKAGE LIBRARIES STATICALLY
#=======================================================

USR_LIBS_Linux += pcre

#=============================
# Build the IOC application
PROD_NAME = oxigrafMO2iTest
PROD_IOC = $(PROD_NAME)

DBD += $(PROD_NAME).dbd

# $(PROD_NAME).dbd will be made up from these files:


$(PROD_NAME)_DBD += base.dbd

# Include dbd files from all support modules:
$(PROD_NAME)_DBD += asyn.dbd
$(PROD_NAME)_DBD += drvAsynIPPort.dbd
$(PROD_NAME)_DBD += stream.dbd
#$(PROD_NAME)_DBD += calc.dbd

# Add all the support libraries needed by this IOC
#$(PROD_NAME)_LIBS += oxigrafMO2i
#$(PROD_NAME)_LIBS += seq pv
$(PROD_NAME)_LIBS += stream
#$(PROD_NAME)_LIBS += calc
$(PROD_NAME)_LIBS += asyn

# $(PROD_NAME)_registerRecordDeviceDriver.cpp derives from $(PROD_NAME).dbd
PROD_SRCS += $(PROD_NAME)_registerRecordDeviceDriver.cpp $(PROD_NAME)Main.cpp

# Finally link to the EPICS Base libraries
$(PROD_NAME)_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

