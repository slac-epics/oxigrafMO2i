TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

#PROD_IOC = oxigrafMO2i
# oxigrafMO2i.dbd will be created and installed
#DBD += oxigrafMO2i.dbd

# oxigrafMO2i.dbd will be made up from these files:
#oxigrafMO2i_DBD += base.dbd

# Include dbd files from all support applications:
#oxigrafMO2i_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#oxigrafMO2i_LIBS += xxx

# oxigrafMO2i_registerRecordDeviceDriver.cpp derives from oxigrafMO2i.dbd
#oxigrafMO2i_SRCS += oxigrafMO2i_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
#oxigrafMO2i_SRCS_DEFAULT += oxigrafMO2iMain.cpp
#oxigrafMO2i_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#oxigrafMO2i_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
#oxigrafMO2i_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

