# nodeos
EOS API 节点(使用MongoDB插件) Docker 镜像

## 快速开始
### 1. 编译镜像
```
docker-compose build
```

### 2. 创建Volume
```
docker volume create eos-data-volume
docker volume create mongo-data-volume
```

### 3. 启动节点
```
docker-compose up -d
```

## 问题处理

### 1. 如何启动测试网络节点？

修改 `docker-compose.yml` 文件中的 `command` 字段，将里面的所有 `mainnet` 文本改为 `jungle`。

### 2. 去哪里获取主网的种子节点？

[https://eosnodes.privex.io/?config=1](https://eosnodes.privex.io/?config=1)

### 3. 启动 nodes 后异常退出怎么办？

尝试启动命令后面添加 `--delete-all-blocks` 参数。
