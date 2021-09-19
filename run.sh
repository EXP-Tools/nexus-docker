#!/bin/bash
# 运行 Nexus 服务
#------------------------------------------------
# 命令执行示例：
# ./run.sh -v 2    // 只运行 Nexus 2
# ./run.sh -v 3    // 只运行 Nexus 3
# ./run.sh         // 只运行 Nexus 2 和 Nexus 3
#------------------------------------------------

VER="0"

set -- `getopt v: "$@"`
while [ -n "$1" ]
do
  case "$1" in
    -v) VER="$2"
        shift ;;
  esac
  shift
done

if [[ ${VER} = "2" ]] ; then
  SERVER="nexus_oss_2"
elif [[ ${VER} = "3" ]] ; then
  SERVER="nexus_oss_3"
else
  SERVER=""
fi

docker-compose up -d ${SERVER}

