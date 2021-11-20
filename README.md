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


### Part Ⅰ 基础篇

* [第一章 认识 Prometheus](chapter01-Basic/README.md)
    * [1.1 Prometheus 介绍](chapter01-Basic/1.1-prometheus-introduction.md)
    * [1.2 Prometheus 安装](chapter01-Basic/1.2-prometheus-install.md)
    * [1.3 时序数据库为什么选 Prometheus](chapter01-Basic/1.3-tsdb-comparison.md)
    * [1.4 术语解释](chapter01-Basic/1.4-glossary.md)
    * [1.5 数据模型](chapter01-Basic/1.5-data-model.md)
    * [1.6 Metric 类型](chapter01-Basic/1.6-metric-types.md)
    * [1.7 Job 和 Instances](chapter01-Basic/1.7-job-and-instances.md)
    * [小结](chapter01-Basic/END.md)
* [第二章 Prometehus 数据库](chapter02-TimeSeriesDB/README.md)
    * [2.1 开始](chapter02-TimeSeriesDB/2.1-getting-started.md)
    * [2.2 安装](chapter02-TimeSeriesDB/2.2-installation.md)
    * [2.3 配置](chapter02-TimeSeriesDB/2.3-configuration.md)
    * [2.4 基础查询](chapter02-TimeSeriesDB/2.4-querying-basics.md)
    * [2.5 操作符查询](chapter02-TimeSeriesDB/2.5-querying-operators.md)
    * [2.6 操作符查询示例](chapter02-TimeSeriesDB/2.6-querying-operator-examples.md)
    * [2.7 查询函数](chapter02-TimeSeriesDB/2.7-querying-functions.md)
    * [2.8 查询示例](chapter02-TimeSeriesDB/2.8-querying-functions-examples.md)
    * [2.9 HTTP API 查询](chapter02-TimeSeriesDB/2.9-querying-http-api.md)
    * [2.10  管理员 HTTP API 查询](chapter02-TimeSeriesDB/2.10-querying-http-admin-api.md)
    * [2.11 存储](chapter02-TimeSeriesDB/2.11-storage.md)
    * [小结](chapter02-TimeSeriesDB/END.md)

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
    * [小结](chapter03-Exporter/END.md)
* [第四章 可视化 todo](chapter04-Visualization/README.md)
    * [4.1 原生可视化界面]()
    * [4.2 Grafana]()
    * [小结](chapter04-Visualization/END.md)
* [第五章 告警管理 todo](chapter05-AlarmManager/README.md)
    * [5.1 Alertmanager]()
    * [5.2 Alert 配置]()
    * [5.3 Bosun ]()
    * [小结](chapter05-AlarmManager/END.md)
* [第六章 Prometehus 查询语言](chapter06-PromQL/README.md)
    * [6.1 基础查询](chapter06-PromQL/6.1-querying-basics.md)
    * [6.2 操作符查询](chapter06-PromQL/6.2-querying-operators.md)
    * [6.3 操作符查询示例](chapter06-PromQL/6.3-querying-operator-examples.md)
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
    * [8.10 Thanos rule](chapter08-ClusterAndHA/8.10-thanos-rule.md)
    * [8.11 Thanos Compactor](chapter08-ClusterAndHA/8.11-thanos-compactor.md)
    * [8.12 Thanos tools](chapter08-ClusterAndHA/8.12-thanos-tools.md)
    * [8.13 Cortex  是什么](chapter08-ClusterAndHA/8.13-cortex-introduction.md)
    * [8.14 Kvass  是什么](chapter08-ClusterAndHA/8.14-kvass-introduction.md)
    * [小结](chapter08-ClusterAndHA/END.md)
* [第九章 服务发现](chapter09-ServiceDiscovery/README.md)
    * [9.1  静态文件服务发现](chapter09-ServiceDiscovery/9.1-file-sd.md)
    * [9.2  Consul 服务发现](chapter09-ServiceDiscovery/9.2-consul-sd.md)
    * [9.3  Consul key/value 备份和还原](chapter09-ServiceDiscovery/9.3-consul-kv-backup-restore.md)
    * [9.4  DNS 服务发现](chapter09-ServiceDiscovery/9.4-dns-sd.md)
    * [小结](chapter09-ServiceDiscovery/END.md)
* [第十章 最佳实践 todo](chapter10-BestPractices/README.md)
    * [10.1 主机监控](chapter10-BestPractices/10.1-node.md)
    * [10.2 存储系统监控](chapter10-BestPractices/10.2-storage.md)
    * [10.3 无编排系统容器监控](chapter10-BestPractices/)
    * [10.4 Kubernetes监控]()
    * [10.5 Blackbox 网络监控]()
    * [10.8 ClickHouse](chapter10-BestPractices/10.8-clickhouse.md)
    * [10.9 Kafka](chapter10-BestPractices/10.9-kafka.md)
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
    * [小结](chapter12-Troubleshoot/END.md)

持续更新中~~~

目录中的每篇文章可能会经常进行排序上的调整，请尽量从根目录来查找，而不是保留固定的 URL 来使用。

# Feedback


这是我的个人 Prometheus 学习笔记，如果对你有帮助，请你跳转到 [Github Prometheus Notes](https://github.com/erdong/prometheus-notes) 点个 Star 。

如果你觉得这个笔记帮助到了你，欢迎你将它推荐给其他人。

如果你遇到了问题，欢迎提 [Github Issue](https://github.com/erdong/prometheus-notes/issues) , 大家一起交流。



# License



<a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh"><img alt="启用 CC 授权条款" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a>
本作品采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en) 国际许可协议进行许可 。
