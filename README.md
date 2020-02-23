# subdockers

The Docker image for subconverter +  sub-web

本镜像包含 [subconverter](https://github.com/tindy2013/subconverter) +  [sub-web](https://github.com/CareyWang/sub-web) 以方便用户部署这一服务

## 安装于运行

```shell
    docker run --name=subdockers \
     -p 6222:80 -p 6223:25500 \
     --restart=always \
     -e API="http://192.168.253.140:25500/sub?" \
     glovecc/subdockers
```

默认将 6222作为 sub 前端端口 6223 作为后端端口 请自行修改 ``API`` 的值 使得其等于 服务器IP ：前端端口 或者 通过 Nginx 等软件 代理后的网址
