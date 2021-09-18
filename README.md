# nexus-docker

> docker 一键部署 nexus 仓库

------

## 环境要求

![](https://img.shields.io/badge/Platform-Linux%20amd64-brightgreen.svg) ![](https://img.shields.io/badge/Platform-Windows%20x64-brightgreen.svg)


## 目录结构说明

```
nexus-docker
├── nexus
│   ├── sonatype-work-2 ........ [nexus2 仓库数据]
│   └── sonatype-work-3 ........ [nexus3 仓库数据]
├── .gitignore
├── LICENSE .................... [开源协议]
├── docker-compose.yml ......... [docker 编排剧本]
└── README.md .................. [此 README 说明]
```

## 部署步骤

- 宿主机安装 docker、docker-compose
- 下载仓库： `git clone https://github.com/lyy289065406/nexus-docker /usr/local/nexus-docker`
- 打开仓库目录： `cd /usr/local/nexus-docker`
- 构建镜像并运行： `docker-compose.yml up -d`
- 启动后，访问 [`http://localhost:8082`](http://localhost:8082) 打开 Nexus2，访问 [`http://localhost:8083`](http://localhost:8083) 打开 Nexus3
- Nexus2 初始登录账密为 `admin / admin123`
- Nexus3 初始登录账号为 `admin`，随机密码存储在 `./nexus/sonatype-work-3/admin.password`


