# 运行 Nexus 服务
#------------------------------------------------
# 命令执行示例：
# ./run.ps1 -v 2    // 只运行 Nexus 2
# ./run.ps1 -v 3    // 只运行 Nexus 3
# ./run.ps1         // 只运行 Nexus 2 和 Nexus 3
#------------------------------------------------

param([int]$v=0)

if (${v} -eq 2) {
    $SERVER = "nexus_oss_2"
} elseif (${v} -eq 3) {
    $SERVER = "nexus_oss_3"
} else {
    $SERVER = ""
}

docker-compose up -d ${SERVER}
