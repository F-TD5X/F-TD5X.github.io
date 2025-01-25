title: 我提供的服务
category:
tag: services
---

### Github加速
访问网址 [https://gh.onki.top/](https://gh.onki.top/) 即可使用.

### DockerHub加速
将加速地址[https://docker.dibs.us.kg](https://docker.dibs.us.kg)填入docker配置文件`/etc/docker/daemon.json`

例如
```json
{
    "registry-mirrors": [
        "https://docker.dibs.us.kg"
    ]
}
```

### golang proxy (via Cloudflare)

在shell中执行
```shell
go env -w GOPROXY=https://goproxy.maye.site,direct
```
