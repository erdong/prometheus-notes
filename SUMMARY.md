# Summary

* [Introduction](README.md)

* [前言]
    * [发行注记](chapter00/0.1-release.md)
    * [贡献指南](chapter00/0.2-contribution.md)

### Part Ⅰ 基础篇

* [第一章 认识 Prometheus](chapter01/README.md)
    * [1.1 Prometheus 介绍](chapter01/1.1-prometheus-introduction.md)
    * [1.2 Prometheus 安装](chapter01/1.2-prometheus-install.md)
    * [1.3 时序数据库为什么选 Prometheus](chapter01/1.3-tsdb-comparison.md)
    * [1.4 术语解释](chapter01/1.4-glossary.md)
    * [1.5 数据模型](chapter01/1.5-data-model.md)
    * [1.6 Metric 类型](chapter01/1.6-metric-types.md)
    * [1.7 Job 和 Instances](chapter01/1.7-job-and-instances.md)
    * [小结](chapter01/END.md)
* [第二章 Prometehus 数据库](chapter02/README.md)
    * [2.1 开始](chapter02/2.1-getting-started.md)
    * [2.2 安装](chapter02/2.2-installation.md)
    * [2.3 配置](chapter02/2.3-configuration.md)
    * [2.4 查询](chapter02/2.4-querying.md)
    * [2.5 存储](chapter02/2.5-storage.md)
    * [小结](chapter02/END.md)


### Part ⅠⅠ 进阶篇

* [第三章 采集器 ](chapter03/README.md)
    * [3.1 PushGateway](chapter03/3.1-pushgateway.md)
    * [3.2 Linux 主机信息采集](chapter03/3.2-node-exporter.md)
    * [3.3 Windows 主机信息采集](chapter03/3.3-windows-exporter.md)
    * [3.4 容器信息采集](chapter03/3.4-cadvisor.md)
    * [3.5 oVirt信息采集](chapter03/3.5-ovirt-exporter.md)
    * [3.6 BlackBox 网络探测](chapter03/3.6-blackbox-exporter.md)
    * [3.7 SNMP 数据采集](chapter03/3.7-snmp-exporter.md)
    * [3.8  ClickHouse 数据采集](chapter03/3.8-clickhouse-exporter.md)
    * [小结](chapter03/END.md)
* [第四章 可视化 todo]()
    * [4.1 原生可视化界面]()
    * [4.2 Grafana]()
    * [小结](chapter04/END.md)
* [第五章 告警管理 todo]()
    * [5.1 Alertmanager]()
    * [5.2 Alert 配置]()
    * [5.3 Bosun ]()
    * [小结](chapter05/END.md)
* [第六章 PromQL todo]()
    * [6.1 基础]()
    * [6.2 操作]()
    * [6.3 功能]()
    * [6.4 示例]()
    * [6.5 API]()
    * [小结](chapter06/END.md)

### Part ⅠⅠⅠ 实战篇
* [第八章 集群与高可用 todo](chapter08/README.md)
    * [8.1 MinIO 搭建](chapter08/8.1-minio-introduction.md)
    * [8.2 MinIO 分布式集群](chapter08/8.2-minio-cluster.md)
    * [8.3 MinIO 参数和限制](chapter08/8.3-minio-parameter-and-limit.md)
    * [8.4 MniIO 性能对比](chapter08/8.4-minio-benchmark.md)
    * [8.5 MniIO 客户端工具 mc](chapter08/8.5-minio-mc-tool.md)
    * [8.6 Thanos 是什么](chapter08/8.6-thanos-introduction.md)
    * [8.7 Thanos query](chapter08/8.7-thanos-query.md)
    * [8.8 Thanos sidecar](chapter08/8.8-thanos-sidecar.md)
    * [8.9 Thanos store](chapter08/8.9-thanos-store.md)
    * [8.10 Thanos rule](chapter08/8.10-thanos-rule.md)
    * [8.11 Thanos Compactor](chapter08/8.11-thanos-compactor.md)
    * [8.12 Thanos tools](chapter08/8.12-thanos-tools.md)
    * [8.13 Cortex  是什么](chapter08/8.13-cortex-introduction.md)
    * [8.14 Kvass  是什么](chapter08/8.14-kvass-introduction.md)
    * [小结](chapter08/END.md)
* [第九章 服务发现 todo](chapter09/README.md)
    * [9.1  静态文件服务发现](chapter09/file-sd.md)
    * [9.2  Consul 服务发现](chapter09/consul-sd.md)
    * [9.3  Consul key/value 备份和还原](chapter09/9.3-consul-kv-backup-restore.md)
    * [9.4  DNS 服务发现](chapter09/9.4-dns-sd.md)
    * [小结](chapter09/END.md)
* [第十章 最佳实践 todo](chapter10/README.md)
    * [10.1 主机监控](chapter10/node.md)
    * [10.2 存储系统监控](chapter10/storage.md)
    * [10.3 容器监控](chapter10/)
    * [10.3.1 无编排系统容器监控]()
    * [10.3.1 编排系统(K8S)容器监控]()
    * [10.4 Kubernetes监控]()
    * [10.5 Blackbox 网络监控]()
    * [10.6 Prometheus 故障汇总（一）](chapter10/10.6-prometheus-problem-sets-1.md)
    * [小结](chapter10/END.md)
* [第十一章 阿里云 Prometheus 实例 todo]()
