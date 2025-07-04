#!/bin/bash

CORE_TOOL=./prebuilts/commonapi_core_generator/commonapi-core-generator-linux-x86_64
SOMEIP_TOOL=./prebuilts/commonapi_someip_generator/commonapi-someip-generator-linux-x86_64

CORE_TOOL_CMD="${CORE_TOOL} -sk -pf"
SOMEIP_TOOL_CMD="${SOMEIP_TOOL} -ll verbose"

EXAMPLE_BASE_DIR=./capicxx-core-tools/CommonAPI-Examples

EXAMPLES=(
    "E01HelloWorld"
    "E02Attributes"
    "E03Methods"
    "E04PhoneBook"
    "E05Manager"
    "E06Unions"
)

for EXAMPLE in "${EXAMPLES[@]}"; do
    echo "************Generating code for example: $EXAMPLE************"
    EXAMPLE_DIR=$EXAMPLE_BASE_DIR/$EXAMPLE
    $CORE_TOOL_CMD      $EXAMPLE_DIR/fidl/$EXAMPLE.fidl             -d $EXAMPLE_DIR/src-gen/core
    $SOMEIP_TOOL_CMD    $EXAMPLE_DIR/fidl/$EXAMPLE-SomeIP.fdepl     -d $EXAMPLE_DIR/src-gen/someip
done
