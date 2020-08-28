# MinIO 搭建

MinIO 是一个基于 Apache License v2.0 开源协议的对象存储服务。它兼容亚马逊 S3 云存储服务接口，非常适合于存储大容量非结构化的数据，例如图片、视频、日志文件、备份数据和容器/虚拟机镜像等，而一个对象文件可以是任意大小，从几 kb 到最大 5T 不等。

MinIO 是一个非常轻量的服务,可以很简单的和其他应用的结合，类似 NodeJS, Redis 或者 MySQL。

官方对 Minio 的定义是一个高性能的对象存储。
> Build high performance data infrastructure 
for machine learning, analytics and 
application data workloads with MinIO 。

Minio 的官方网站是 https://min.io ，
Minio 的官方文档是 https://docs.min.io/cn/ ，
GitHub 仓库地址是：https://github.com/minio/minio ，目前有 18.8k Stars (2019.11.9)

Minio 的 benchmark 说明：

https://min.io/resources/docs/MinIO-vs-HDFS-MapReduce-performance-comparison.pdf
https://min.io/resources/docs/MinIO-throughput-benchmarks-on-NVMe-SSD.pdf
https://min.io/resources/docs/Performance-comparison-Starburst-Presto-SQL.pdf
https://min.io/resources/docs/MinIO-throughput-benchmarks-on-HDD.pdf
https://min.io/resources/docs/Performance-comparison-Apache-Spark.pdf

# 快速开始一个单节点的 MinIO 
MinIO 分为服务端和客户端，服务端提供一个对象存储，也提供一个 Web 的管理页面。客户端是用来管理、查看服务端的一个工具。服务端的二进制文件是 `minio` ，客户端的二进制文件是 `mc` 。

## 使用二进制文件启动

首先先下载服务端的二进制文件，其次准备一个用来存储的磁盘或者目录，

下载好以后赋予执行权限，可以使用如下命令快速启动。

```
chmod +x minio
./minio server /erdong/data
```

启动后可以通过访问 http://localhost:9000 来访问你的对象存储。

## 使用 Docker 启动

MinIO 需要一个持久卷来存储配置和应用数据。不过, 如果只是为了测试一下, 您可以通过简单地传递一个目录（在下面的示例中为 `/erdong/data`）启动 MinIO 。这个目录会在容器启动时在容器的文件系统中创建，不过所有的数据都会在容器退出时丢失。

要创建具有永久存储的 MinIO 容器，您需要将本地持久目录从主机操作系统映射到虚拟配置 ~/.minio 并导出 /data 目录。 为此，请运行以下命令

```
docker run -p 9000:9000 --name minio \
  -e "MINIO_ACCESS_KEY=minioadmin" \
  -e "MINIO_SECRET_KEY=minioadminpassword" \
  -v /erdong/minio/data:/data \
  -v /erdong/minio/config:/root/.minio \
  minio/minio server /data
```

启动后，即可访问 http://localhost:9000 来访问你的对象存储。

上述命令中设置了如下参数：

* MINIO_ACCESS_KEY 管理员的访问秘钥
* MINIO_SECRET_KEY 管理员的秘钥
* /erdong/minio/data:/data  挂载持久化数据目录
* /erdong/minio/config:/root/.minio  挂载配置文件
* server 启动 Server 模式，除了该模式还有一个 Gateway 模式。
* /data  指定数据目录

如果需要指定端口可以使用如下参数

```
--address ":9000"
```

# 使用 TLS 安全访问 MinIO 服务

接下来我们看看如何在 linux 上配置 MinIO 服务使用 TLS 。

使用 TLS 的前提是先下载好 MinIO Server 。

如果你已经有私钥和公钥证书，你需要将他们拷贝到 MinIO 的 `$HOME/.minio/certs` 文件夹，私钥的名字必须是 `private.key` ，公钥证书的名字必须是 `public.crt` 。 MinIO 在 Linux 只支持使用 PEM 格式的秘钥和证书，在 Windows 上只支持 PEM 格式的秘钥和证书，目前不支持 PFX 证书。

如果这个证书是被证书机构签发的，`public.crt` 应该是服务器的证书。

Linux 可以使用如下工具来生成证书
* Let‘s Encrypt
* generate_cert.go
* OpenSSL 

Windows 可以使用如下工具来生成证书

* GnuTLS

Minio 也可以配置成连接其它服务，不管是 Minio 节点还是像 NATs、Redis 这些。如果这些服务用的不是在已知证书机构注册的证书，你可以让 Minio 服务信任这些 CA ，怎么做呢，将这些证书放到Minio配置路径下(~/.minio/certs/CAs/ Linux 或者 C:\Users\<Username>\.minio\certs\CAs Windows).

## 如何使用 OpenSSL 来生成自签证书

使用如下命令生成私钥，私钥会生成在执行命令的目录下

```
openssl genrsa -out private.key 2048
```

生成自签名的证书，证书会生成在执行命令的目录下

```
openssl req -new -x509 -days 3650 -key private.key -out public.crt -subj "/C=US/ST=state/L=location/O=organization/CN=domain"
```

其中相关内容可以按照实际情况修改，比如 `/C` 是国家，中国是 CN ，`/ST` 是州或者省， `/L` 是市或者区， `/CN` 是域名。

秘钥和证书生成好以后，按照上边的要求放置在对应的目录即可。


# Q&A
Thanos 在连接 MinIO 的时候遇到了一些问题，日志里有很多错误提示，列在下边供参考。
## 1. 提示冒号太多

日志报错如下所示：

```
level=info ts=2019-11-08T02:43:40.981858805Z caller=main.go:170 msg="Tracing will be disabled"
level=info ts=2019-11-08T02:43:40.982326667Z caller=factory.go:39 msg="loading bucket configuration"
level=error ts=2019-11-08T02:43:40.982682262Z caller=main.go:200 err="store command failed: create bucket client: create S3 client: initialize s3 client: address http://127.0.0.1:9000: too many colons in address"
```

日志描述直译过来就是冒号太多了，原因是在配置文件中，填写了 MinIO 提供的 S3 协议的 endpoint 的时候，多填写了 `http://` ，导致提示该错误。本意是在内网使用， HTTP 协议就可以了，不需要要开启 HTTPS ，但是 Thanos 在连接 S3 存储的时候默认是使用 HTTPS 的，不能通过这种方式来使用 HTTP 。

错误的配置如下：

```
type: S3
config:
  bucket: "disk1"
  endpoint: "http://127.0.0.1:9000"
```
正确的配置如下：
```
type: S3
config:
  bucket: "disk1"
  endpoint: "127.0.0.1:9000"
```

## 2. 提示对方没有使用 HTTPS

日志报错如下
```
level=info ts=2019-11-08T02:42:04.366000876Z caller=main.go:170 msg="Tracing will be disabled"
level=info ts=2019-11-08T02:42:04.366417674Z caller=factory.go:39 msg="loading bucket configuration"
level=info ts=2019-11-08T02:42:04.384413714Z caller=cache.go:172 msg="created index cache" maxItemSizeBytes=131072000 maxSizeBytes=262144000 maxItems=math.MaxInt64
level=error ts=2019-11-08T02:42:04.385632149Z caller=main.go:200 err="store command failed: bucket store initial sync: sync block: iter: Get https://127.0.0.1:9000/prometheus-store/?delimiter=%2F&max-keys=1000&prefix=: http: server gave HTTP response to HTTPS client"
```

这是 Thanos 连接的对象存储只提供了 HTTP ，没有提供 HTTPS，这个时候需要让对象存储添加证书，启用 HTTPS 。

## 3. 不能够认证某个域名

日志报错如下：

```
level=info ts=2019-11-08T03:06:57.90508837Z caller=main.go:170 msg="Tracing will be disabled"
level=info ts=2019-11-08T03:06:57.905445182Z caller=factory.go:39 msg="loading bucket configuration"
level=info ts=2019-11-08T03:06:57.923283984Z caller=cache.go:172 msg="created index cache" maxItemSizeBytes=131072000 maxSizeBytes=262144000 maxItems=math.MaxInt64
level=error ts=2019-11-08T03:06:57.927125234Z caller=main.go:200 err="store command failed: bucket store initial sync: sync block: iter: Get https://10.23.80.18:9000/prometheus-store/?delimiter=%2F&max-keys=1000&prefix=: x509: cannot validate certificate for minio-erdong.site because it doesn't contain any IP SANs"
```

因为 Thanos 连接 Minio 的 HTTP 配置里，有一个 `insecure_skip_verify` 选项，该选项默认为 false ，需要对域名的证书进行验证，由于使用了自签证书，没有在权威的 CA 机构做认证，所以在连接过程中会提示不安全，将值改为 true，跳过这个验证就可以了。

```
  http_config:
    idle_conn_timeout: 90s
    response_header_timeout: 2m
    insecure_skip_verify: true
```


# end

