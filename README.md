# vsomeip-demo

## usage

### environment

- ubunt20.04

### preparation

#### tools

> install and configure these tools

- git-repo
- java 1.8

make sure they are ready installed by run
`repo help` and `java -version`

#### ethernet and ip

check your ethernet `network interface` name and `YOUR_IP`

```
ip -o addr show  | awk '/inet / {gsub(/\/.*/, "", $4); print $2, $4}' | grep -Ev 'docker|lo'

# output is your network interface name and YOUR_IP
eth0 192.168.1.9
```

add route

```
route add -net 224.0.0.0/4 dev eth0
```



### download code

`repo init -u git@github.com:japric/vsomeip_repo.git -m default.xml --repo-url=https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/`

### build

> note: use YOUR_IP for -DUNICAST_ADDRESS param


```
chmod +x gen.sh
# generate interface code by commonapi tool in gen.sh
./gen.sh
mkdir build && cd build
cmake .. -DGTEST_ROOT=$(pwd)/../googletest -DUNICAST_ADDRESS=192.168.1.9
make -j8
cd ..
```

### run

`source envsetup.sh`

> run client

```
export VSOMEIP_CONFIGURATION=$(pwd)/capicxx-core-tools/CommonAPI-Examples/E01HelloWorld/vsomeip-local.json
VSOMEIP_APPLICATION_NAME=client-sample ./build/bin/E01HelloWorld/E01HelloWorldClient
```

> run service in another commandline window

```
export VSOMEIP_CONFIGURATION=$(pwd)/capicxx-core-tools/CommonAPI-Examples/E01HelloWorld/vsomeip-local.json
VSOMEIP_APPLICATION_NAME=service-sample ./build/bin/E01HelloWorldService
```










