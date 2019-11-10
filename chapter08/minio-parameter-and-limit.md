# MinIO 参数解析与限制

MinIO server 在默认情况下会将所有配置信息存到 `${HOME}/.minio/config.json` 文件中。 以下部分提供每个字段的详细说明以及如何自定义它们。一个完整的 config.json 在 [这里](https://raw.githubusercontent.com/minio/minio/master/docs/config/config.sample.json)

默认的配置目录是 `${HOME}/.minio`，你可以使用 `--config-dir` 选项指定新的路径覆盖默认的路径。MinIO server 在首次启动时会生成一个新的 config.json ，里面带有自动生成的访问凭据。

TLS 证书存在 `${HOME}/.minio/certs` 目录下，你需要将证书放在该目录下来启用 HTTPS 。

以下是一个带来TLS证书的MinIO server的目录结构。

```
$ tree ~/.minio
/home/user1/.minio
├── certs
│   ├── CAs
│   ├── private.key
│   └── public.crt
└── config.json

```


|  参数 | 类型 | 描述 |
| --- | --- | --- |
| version | string | version决定了配置文件的格式，任何老版本都会在启动时自动迁移到新版本中。 [请勿手动修改] |
| credential |  | 对象存储和Web访问的验证凭据。 |
| credential.accessKey | string | Access key长度最小是5个字符，你可以通过 MINIO_ACCESS_KEY环境变量进行修改 |
| credential.secretKey | string | Secret key长度最小是8个字符，你可以通过MINIO_SECRET_KEY环境变量进行修改 |
| region | string | region描述的是服务器的物理位置，默认是us-east-1（美国东区1）,这也是亚马逊S3的默认区域。你可以通过MINIO_REGION_NAME 环境变量进行修改。如果不了解这块，建议不要随意修改 |
| browser | string | 开启或关闭浏览器访问，默认是开启的，你可以通过 MINIO_BROWSER 环境变量进行修改 |



示例

```
export MINIO_BROWSER=off
minio server /data
```
		
# MinIO 服务限制

由于纠删码的原因，MinIO 有如下限制


| 项目 | 参数 |
| --- | --- |
| 最大驱动器数量 | 16 |
| 最小驱动器数量 | 4 |
| 读仲裁 | N/2 |
| 写仲裁 | N/2+1 |

通过浏览器访问 MinIO ，由于浏览器的限制，上传文件的大小限制为 5GB。

S3 API 的限制


| 项目 | 参数 |
| --- | --- |
| 最大桶数 | 无限额 |
| 每桶最大对象数 | 无限额 |
| 最大对象大小 | 5TB |
| 最小对象大小 | 0 |
| 每次 PUT 操作的最大对象大小 | 5GB |
| 每次上传的最大 Part 数量 | 10000 |
| Part 大小 | 5MB到5GB. 最后一个part可以从0B到5GB |
| 每次list parts请求可返回的part最大数量 | 1000 |
| 每次list objects请求可返回的object最大数量 | 1000 |
| 每次list multipart uploads请求可返回的multipart uploads最大数量 | 1000 |


Minio 不支持的 Amazon S3 Bucket API

* BucketACL (可以用 bucket policies)
* BucketCORS (所有HTTP方法的所有存储桶都默认启用CORS)
* BucketLifecycle (Minio纠删码不需要)
* BucketReplication (可以用 mc mirror)
* BucketVersions, BucketVersioning (可以用 s3git)
* BucketWebsite (可以用 caddy or nginx)
* BucketAnalytics, BucketMetrics, BucketLogging (可以用 bucket notification APIs)
* BucketRequestPayment
* BucketTagging


Minio不支持的Amazon S3 Object API.

* ObjectACL (可以用 bucket policies)
* ObjectTorrent

