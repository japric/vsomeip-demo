ROOT_DIR=`pwd`
echo $ROOT_DIR

BASE_DIR=$ROOT_DIR/capicxx-core-tools/CommonAPI-Examples

export COMMONAPI_CONFIG=$BASE_DIR/E01HelloWorld/commonapi4someip.ini

export LD_LIBRARY_PATH=$ROOT_DIR/build/lib:$LD_LIBRARY_PATH