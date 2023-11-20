# Prometheus Notes

<p align="center">
  <a href="https://github.com/erdong/prometheus-notes/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/erdong/prometheus-notes.svg?style=popout"></a>
  <a href="https://github.com/erdong/prometheus-notes/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/erdong/prometheus-notes.svg?style=popout"></a>
  <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en"><img alt="Notes License" src="https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg?style=popout"></a>
  <a href="https://erdong.site/about/"><img alt="Author" src="https://img.shields.io/badge/Author-Erdong-important.svg?style=popout"></a>
</p>

# 目录

* [发行注记](chapter00/0.1-release.md)

* [贡献指南](chapter00/0.2-contribution.md)

* [序](chapter00/0.3-foreword.md)

### Part Ⅰ 基础篇

* [第一章 认识 Prometheus](chapter01-Basic/README.md)
    * [1.1 Prometheus 介绍](chapter01-Basic/1.1-prometheus-introduction.md)
    * [1.2 Prometheus 安装](chapter01-Basic/1.2-prometheus-install.md)
    * [1.3 时序数据库为什么选 Prometheus](chapter01-Basic/1.3-tsdb-comparison.md)
    * [1.4 术语解释](chapter01-Basic/1.4-glossary.md)
    * [1.5 数据模型](chapter01-Basic/1.5-data-model.md)
    * [1.6 Metric 类型](chapter01-Basic/1.6-metric-types.md)
    * [1.7 Job 和 Instances](chapter01-Basic/1.7-job-and-instances.md)
    * [1.8 Prometheus 发布 LTS 长期支持版本](chapter01-Basic/1.8-long-term-support.md)
    * [1.9 Prometheus 发布第二个 LTS 长期支持版本](chapter01-Basic/1.8-long-term-support-2.md)
    * [小结](chapter01-Basic/END.md)
* [第二章 Prometehus 服务](chapter02-Server/README.md)
    * [2.1 开始](chapter02-Server/2.1-getting-started.md)
    * [2.2 安装](chapter02-Server/2.2-installation.md)
    * [2.3 配置](chapter02-Server/2.3-configuration.md)
    * [2.9 Prometheus 的 API 稳定性保障](chapter02-Server/2.9-api-stability.md)
    * [2.10 Prometheus 启动时被禁止的功能特性](chapter02-Server/2.10-feature-flags.md)
    * [2.11 存储](chapter02-Server/2.11-storage.md)
    * [2.13 Kafka Adapter](chapter02-Server/2.13-kafka-adapter.md)
    * [小结](chapter02-Server/END.md)

### Part ⅠⅠ 进阶篇
* [第三章 采集器](chapter03-Exporter/README.md)
    * [3.1 PushGateway](chapter03-Exporter/3.1-pushgateway.md)
    * [3.2 Linux 主机信息采集](chapter03-Exporter/3.2-node-exporter.md)
    * [3.3 Windows 主机信息采集](chapter03-Exporter/3.3-windows-exporter.md)
    * [3.4 容器信息采集](chapter03-Exporter/3.4-cadvisor.md)
    * [3.5 oVirt信息采集](chapter03-Exporter/3.5-ovirt-exporter.md)
    * [3.6 BlackBox 网络探测](chapter03-Exporter/3.6-blackbox-exporter.md)
    * [3.7 SNMP 数据采集](chapter03-Exporter/3.7-snmp-exporter.md)
    * [3.8 ClickHouse 数据采集](chapter03-Exporter/3.8-clickhouse-exporter.md)
    * [3.9 Kubernetes 集群数据采集](chapter03-Exporter/3.9-kube-state-metrics.md)
    * [3.10 Grafana 数据采集](chapter03-Exporter/3.10-grafana-metrics.md)
    * [3.11 Ping 数据采集](chapter03-Exporter/3.11-ping-exporter.md)
    * [3.12 Kafka 数据采集](chapter03-Exporter/3.12-kafka-exporter.md)
    * [3.13 Consul 数据采集](chapter03-Exporter/3.13-consul-exporter.md)
    * [3.14 MySQL 数据采集](chapter03-Exporter/3.14-mysql-server-exporter.md)
    * [3.15 PostgreSQL 数据采集](chapter03-Exporter/3.15-postgresql-exporter.md)
    * [3.16 Microsoft SQL 数据采集](chapter03-Exporter/3.16-mssql-server-exporter.md)
    * [3.17 Elasticsearch 数据采集](chapter03-Exporter/3.17-elasticsearch-exporter.md)
    * [3.18 JMX 数据采集](chapter03-Exporter/3.18-jmx-exporter.md)
    * [3.19 Graphite 数据采集](chapter03-Exporter/3.19-graphite-exporter.md)
    * [3.20 Collectd 数据采集](chapter03-Exporter/3.20-collectd-exporter.md)
    * [3.21 Lustre 数据采集](chapter03-Exporter/3.21-lustre-exporter.md)
    * [3.22 Ceph 数据采集](chapter03-Exporter/3.22-ceph-exporter.md)
    * [3.23 Infiniband 数据采集](chapter03-Exporter/3.23-infiniband-exporter.md)
    * [3.24 Slurm 数据采集](chapter03-Exporter/3.24-slurm-exporter.md)
    * [3.25 Kong 数据采集](chapter03-Exporter/3.25-kong-metrics.md)
    * [3.26 HAProxy 数据采集](chapter03-Exporter/3.26-haproxy-exporter.md)
    * [3.27 Statsd 数据采集](chapter03-Exporter/3.27-statsd-exporter.md)
    * [3.28 Memcached 数据采集](chapter03-Exporter/3.28-memcached-exporter.md)
    * [3.29 RabbitMQ 数据采集](chapter03-Exporter/3.29-rabbitmq-exporter.md)
    * [3.30 Redis 数据采集](chapter03-Exporter/3.30-redis-exporter.md)
    * [3.31 IPMI 数据采集](chapter03-Exporter/3.31-ipmi-exporter.md)
    * [3.32 ProxySQL 数据采集](chapter03-Exporter/3.32-proxysql-exporter.md)
    * [3.33 Varnish 数据采集](chapter03-Exporter/3.33-varnish-exporter.md)
    * [3.34 JSON 数据采集](chapter03-Exporter/3.34-json-exporter.md)
    * [3.35 BIND 数据采集](chapter03-Exporter/3.35-bind-exporter.md)
    * [3.36 Telegraf 数据采集](chapter03-Exporter/3.36-telegraf-exporter.md)
    * [小结](chapter03-Exporter/END.md)
* [第四章 可视化 todo](chapter04-Visualization/README.md)
    * [4.1 原生可视化界面]()
    * [4.2 Grafana]()
    * [小结](chapter04-Visualization/END.md)
* [第五章 告警管理 todo](chapter05-AlarmManager/README.md)
    * [5.1 Alertmanager]()
    * [5.2 Alert 配置]()
    * [5.3 Alert 配置]()
    * [5.4 Bosun ]()
    * [小结](chapter05-AlarmManager/END.md)
* [第六章 Prometehus 查询语言](chapter06-PromQL/README.md)
    * [6.1 基础查询](chapter06-PromQL/6.1-querying-basics.md)
    * [6.2 操作符查询](chapter06-PromQL/6.2-querying-operators.md)
    * [6.3 操作符查询示例](chapter06-PromQL/6.3-querying-operators-examples.md)
    * [6.4 查询函数](chapter06-PromQL/6.4-querying-functions.md)
    * [6.5 查询示例](chapter06-PromQL/6.5-querying-functions-examples.md)
    * [6.6 HTTP API 查询](chapter06-PromQL/6.6-querying-http-api.md)
    * [6.7 管理员 HTTP API 查询](chapter06-PromQL/6.7-querying-http-admin-api.md)
    * [小结](chapter06-PromQL/END.md)
    
### Part ⅠⅠⅠ 实战篇
* [第七章 插件编写 todo](chapter07-Instrumenting/README.md)
    * [小结](chapter07-Instrumenting/END.md)
* [第八章 集群与高可用](chapter08-ClusterAndHA/README.md)
    * [8.1 MinIO 搭建](chapter08-ClusterAndHA/8.1-minio-introduction.md)
    * [8.2 MinIO 分布式集群](chapter08-ClusterAndHA/8.2-minio-cluster.md)
    * [8.3 MinIO 参数和限制](chapter08-ClusterAndHA/8.3-minio-parameter-and-limit.md)
    * [8.4 MniIO 性能对比](chapter08-ClusterAndHA/8.4-minio-benchmark.md)
    * [8.5 MniIO 客户端工具 mc](chapter08-ClusterAndHA/8.5-minio-mc-tool.md)
    * [8.6 Thanos 是什么](chapter08-ClusterAndHA/8.6-thanos-introduction.md)
    * [8.7 Thanos query](chapter08-ClusterAndHA/8.7-thanos-query.md)
    * [8.8 Thanos sidecar](chapter08-ClusterAndHA/8.8-thanos-sidecar.md)
    * [8.9 Thanos store](chapter08-ClusterAndHA/8.9-thanos-store.md)
    * [8.10 Thanos Tools](chapter08-ClusterAndHA/8.10-thanos-tools.md)
    * [8.11 Thanos Compactor](chapter08-ClusterAndHA/8.11-thanos-compactor.md)
    * [8.12 Thanos Rule](chapter08-ClusterAndHA/8.12-thanos-rule.md)
    * [8.13 Cortex  是什么](chapter08-ClusterAndHA/8.13-cortex-introduction.md)
    * [8.14 Kvass  是什么](chapter08-ClusterAndHA/8.14-kvass-introduction.md)
    * [8.15 VictoriaMetrics  是什么](chapter08-ClusterAndHA/8.15-victoriametrics-introduction.md)
    * [8.16 Thanos 历史数据查询](chapter08-ClusterAndHA/8.16-thanos-history-query.md)
    * [小结](chapter08-ClusterAndHA/END.md)
* [第九章 服务发现](chapter09-ServiceDiscovery/README.md)
    * [9.1  静态文件服务发现](chapter09-ServiceDiscovery/9.1-file-sd.md)
    * [9.2  Consul 服务发现](chapter09-ServiceDiscovery/9.2-consul-sd.md)
    * [9.3  Consul key/value 备份和还原](chapter09-ServiceDiscovery/9.3-consul-kv-backup-restore.md)
    * [9.4  DNS 服务发现](chapter09-ServiceDiscovery/9.4-dns-sd.md)
    * [9.5  Kubernetes 服务发现](chapter09-ServiceDiscovery/9.5-kubernetes-sd.md)
    * [小结](chapter09-ServiceDiscovery/END.md)
* [第十章 最佳实践](chapter10-BestPractices/README.md)
    * [10.1 如何命名指标和标签](chapter10-BestPractices/10.1-metrics-label.md)
    * [10.2 监控页面的绘制](chapter10-BestPractices/10.2-monitor-dashboards.md)
    * [10.3 如何监控测量你的代码](chapter10-BestPractices/10.3-how-to-instrument.md)
    * [10.4 监控的注意事项](chapter10-BestPractices/10.4-things-to-watch-out.md)
    * [10.5 什么时候使用 Pushgateway](chapter10-BestPractices/10.5-when-to-use-the-pushgateway.md)
    * [10.6 PushGateway 集群解决方案](chapter10-BestPractices/10.6-pushgateway-cluster.md)
    * [10.7 Kubernetes 监控](chapter10-BestPractices/10.7-kubernetes.md)
    * [10.7 无编排系统容器监控]()
    * [10.8 Blackbox 网络监控]()
    * [10.9 ClickHouse](chapter10-BestPractices/10.9-clickhouse.md)
    * [10.10 Kafka](chapter10-BestPractices/10.10-kafka.md)
    * [10.11 主机监控](chapter10-BestPractices/10.11-node.md)
    * [10.12 存储系统监控](chapter10-BestPractices/10.12-storage.md)
    * [小结](chapter10-BestPractices/END.md)
* [第十一章 云计算服务提供商](chapter11-CCSP/README.md)
    * [11.1 阿里云监控](chapter11-CCSP/11.1-aliyun-cms.md)
    * [11.2 华为云监控](chapter11-CCSP/11.2-huaweicloud-cloudeye.md)
    * [11.3 AWS 监控](chapter11-CCSP/11.3-aws-cloudwatch.md)
    * [11.4 腾讯云监控](chapter11-CCSP/11.4-tencentcloud.md)
    * [11.5 Azure监控](chapter11-CCSP/11.5-azure-metrics.md)
    * [小结](chapter11-CCSP/END.md)
* [第十二章 问题排查](chapter12-Troubleshoot/README.md)
    * [12.1 Prometheus 时间](chapter12-Troubleshoot/12.1-prometheus-time.md)
    * [12.2 Prometheus 故障汇总（一）](chapter12-Troubleshoot/12.2-prometheus-problem-sets-1.md)
    * [12.3 Promtool Check 功能](chapter12-Troubleshoot/12.3-promtool-check.md)
    * [12.4 Promtool Query 功能](chapter12-Troubleshoot/12.4-promtool-query.md)
    * [12.5 Promtool Debug 功能](chapter12-Troubleshoot/12.5-promtool-debug.md)
    * [12.6 Promtool TSDB 功能](chapter12-Troubleshoot/12.6-promtool-tsdb.md)
    * [12.7 amtool Base 功能](chapter12-Troubleshoot/12.7-amtool-base.md)
    * [12.8 amtool Alert 功能](chapter12-Troubleshoot/12.8-amtool-alert.md)
    * [12.9 amtool Silence 功能](chapter12-Troubleshoot/12.9-amtool-silence.md)
    * [12.10 amtool Check 功能](chapter12-Troubleshoot/12.10-amtool-check-config.md)
    * [12.11 pprof](chapter12-Troubleshoot/12.11-pprof.md)
    * [小结](chapter12-Troubleshoot/END.md)
* [第十三章 发行注记](chapter13-Release/README.md)
    * [13.1 Release 2.0.0](chapter13-Release/13.1-release-2-0-0.md)
    * [13.2 Release 2.1.0](chapter13-Release/13.2-release-2-1-0.md)
    * [13.3 Release 2.2.0](chapter13-Release/13.3-release-2-2-0.md)
    * [13.4 Release 2.3.0](chapter13-Release/13.4-release-2-3-0.md)
    * [13.5 Release 2.4.0](chapter13-Release/13.5-release-2-4-0.md)
    * [13.6 Release 2.5.0](chapter13-Release/13.6-release-2-5-0.md)
    * [13.7 Release 2.6.0](chapter13-Release/13.7-release-2-6-0.md)
    * [13.8 Release 2.7.0](chapter13-Release/13.8-release-2-7-0.md)
    * [13.9 Release 2.8.0](chapter13-Release/13.9-release-2-8-0.md)
    * [13.10 Release 2.9.0](chapter13-Release/13.10-release-2-9-0.md)
    * [13.11 Release 2.10.0](chapter13-Release/13.11-release-2-10-0.md)
    * [13.12 Release 2.11.0](chapter13-Release/13.12-release-2-11-0.md)
    * [13.13 Release 2.12.0](chapter13-Release/13.13-release-2-12-0.md)
    * [13.14 Release 2.13.0](chapter13-Release/13.14-release-2-13-0.md)
    * [13.15 Release 2.14.0](chapter13-Release/13.15-release-2-14-0.md)
    * [13.16 Release 2.15.0](chapter13-Release/13.16-release-2-15-0.md)
    * [13.17 Release 2.16.0](chapter13-Release/13.17-release-2-16-0.md)
    * [13.18 Release 2.17.0](chapter13-Release/13.18-release-2-17-0.md)
    * [13.19 Release 2.18.0](chapter13-Release/13.19-release-2-18-0.md)
    * [13.20 Release 2.19.0](chapter13-Release/13.20-release-2-19-0.md)
    * [13.21 Release 2.20.0](chapter13-Release/13.21-release-2-20-0.md)
    * [13.22 Release 2.21.0](chapter13-Release/13.22-release-2-21-0.md)
    * [13.23 Release 2.22.0](chapter13-Release/13.23-release-2-22-0.md)
    * [13.24 Release 2.23.0](chapter13-Release/13.24-release-2-23-0.md)
    * [13.25 Release 2.24.0](chapter13-Release/13.25-release-2-24-0.md)
    * [13.26 Release 2.25.0](chapter13-Release/13.26-release-2-25-0.md)
    * [13.27 Release 2.26.0](chapter13-Release/13.27-release-2-26-0.md)
    * [13.28 Release 2.27.0](chapter13-Release/13.28-release-2-27-0.md)
    * [13.29 Release 2.28.0](chapter13-Release/13.29-release-2-28-0.md)
    * [13.30 Release 2.29.0](chapter13-Release/13.30-release-2-29-0.md)
    * [13.31 Release 2.30.0](chapter13-Release/13.31-release-2-30-0.md)
    * [13.32 Release 2.31.0](chapter13-Release/13.32-release-2-31-0.md)
    * [13.33 Release 2.32.0](chapter13-Release/13.33-release-2-32-0.md)
    * [13.34 Release 2.33.0](chapter13-Release/13.34-release-2-33-0.md)
    * [13.35 Release 2.34.0](chapter13-Release/13.35-release-2-34-0.md)
    * [13.36 Release 2.35.0](chapter13-Release/13.36-release-2-35-0.md)
    * [13.37 Release 2.36.0](chapter13-Release/13.37-release-2-36-0.md)
    * [13.38 Release 2.37.0](chapter13-Release/13.38-release-2-37-0.md)
    * [13.39 Release 2.38.0](chapter13-Release/13.39-release-2-38-0.md)
    * [小结](chapter13-Release/END.md)

持续更新中~~~

目录中的每篇文章可能会经常进行排序上的调整，请尽量从根目录来查找，而不是保留固定的 URL 来使用。

# Feedback


这是我的个人 Prometheus 学习笔记，如果对你有帮助，请你跳转到 [Github Prometheus Notes](https://github.com/erdong/prometheus-notes) 点个 Star 。

如果你觉得这个笔记帮助到了你，欢迎你将它推荐给其他人。

如果你遇到了问题，欢迎提 [Github Issue](https://github.com/erdong/prometheus-notes/issues) , 大家一起交流。


# Stargazers over time

[![Stargazers over time](https://starchart.cc/erdong/prometheus-notes.svg)](https://starchart.cc/erdong/prometheus-notes)


# License



<a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh"><img alt="启用 CC 授权条款" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a>
本作品采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en) 国际许可协议进行许可 。
