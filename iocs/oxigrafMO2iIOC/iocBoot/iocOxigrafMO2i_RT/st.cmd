#!../../bin/linuxRT-x86_64/oxigrafMO2iTest

## You may have to change oxigrafMO2iIOC_RT to something else
## everywhere it appears in this file

< envPaths

#epicsEnvSet( "DEVICE_PORT",  "pna-b084-rf01" )
epicsEnvSet( "DEVICE_PORT",  "134.79.219.174" )
epicsEnvSet( "BASE_NAME", "MARCIO:PNA:B084:RF01" )
epicsEnvSet( "STREAM_PROTOCOL_PATH", "$(TOP)/db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/oxigrafMO2iTest.dbd"
oxigrafMO2iTest_registerRecordDeviceDriver pdbbase

#------------------------------------------------------------------------------
# Asyn support

# Set this to enable LOTS of stream module diagnostics
#var streamDebug 1

# Initialize Serial Asyn support, configure logging before enabling autoconnect
drvAsynIPPortConfigure( "P0", "$(DEVICE_PORT):9760", 0, 0, 0 )

asynSetTraceMask("P0", 0, "0x08")
asynSetTraceIOMask("P0", 0, "0x01")

## Load record instances
dbLoadRecords("db/MO2i.db","P=$(BASE_NAME):,PORT=P0")

cd "${TOP}/iocBoot/${IOC}"
iocInit
