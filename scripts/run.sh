#!/bin/bash

# E01
export VSOMEIP_CONFIGURATION=$(pwd)/config/vsomeip-local.json
VSOMEIP_APPLICATION_NAME=service-sample ./build/bin/E01HelloWorldService &
VSOMEIP_APPLICATION_NAME=client-sample ./build/bin/E01HelloWorldClient &


# # E03
# export VSOMEIP_CONFIGURATION=$(pwd)/config/vsomeip-local.json
# VSOMEIP_APPLICATION_NAME=service-sample ./build/bin/E03MethodsService &
# VSOMEIP_APPLICATION_NAME=client-sample ./build/bin/E03MethodsClient &