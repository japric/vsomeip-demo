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
    "E07Mainloop"
    "E08CrcProtection"
)

for EXAMPLE in "${EXAMPLES[@]}"; do
    echo "************Generating code for example: $EXAMPLE************"
    EXAMPLE_DIR=$EXAMPLE_BASE_DIR/$EXAMPLE
    FIDL=$EXAMPLE.fidl
    FDEPL=$EXAMPLE-SomeIP.fdepl
    if [ $EXAMPLE = "E08CrcProtection" ]; then
        FDEPL=$EXAMPLE.fdepl
    fi
    echo "-----------Using FIDL file: $FIDL"
    echo "-----------Using FDEPL file: $FDEPL"
    $CORE_TOOL_CMD      $EXAMPLE_DIR/fidl/$FIDL             -d $EXAMPLE_DIR/src-gen/core
    $SOMEIP_TOOL_CMD    $EXAMPLE_DIR/fidl/$FDEPL            -d $EXAMPLE_DIR/src-gen/someip
done