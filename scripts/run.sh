#!/bin/bash

# E01
export VSOMEIP_CONFIGURATION=$(pwd)/capicxx-core-tools/CommonAPI-Examples/E01HelloWorld/E01HelloWorld/vsomeip-local.json
VSOMEIP_APPLICATION_NAME=service-sample ./build/capicxx-core-tools/CommonAPI-Examples/E01HelloWorld/E01HelloWorldService &
VSOMEIP_APPLICATION_NAME=client-sample ./build/capicxx-core-tools/CommonAPI-Examples/E01HelloWorld/E01HelloWorldClient &