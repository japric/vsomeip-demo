#!/bin/bash

CORE_TOOL=./prebuilts/commonapi_core_generator/commonapi-core-generator-linux-x86_64
SOMEIP_TOOL=./prebuilts/commonapi_someip_generator/commonapi-someip-generator-linux-x86_64

CORE_TOOL_CMD="${CORE_TOOL} -sk -pf"
SOMEIP_TOOL_CMD="${SOMEIP_TOOL} -ll verbose"

EXAMPLE_BASE_DIR=./capicxx-core-tools/CommonAPI-Examples

EXAMPLE_01_DIR=$EXAMPLE_BASE_DIR/E01HelloWorld
$CORE_TOOL_CMD      $EXAMPLE_01_DIR/fidl/E01HelloWorld.fidl             -d $EXAMPLE_01_DIR/src-gen/core
$SOMEIP_TOOL_CMD    $EXAMPLE_01_DIR/fidl/E01HelloWorld-SomeIP.fdepl     -d $EXAMPLE_01_DIR/src-gen/someip
