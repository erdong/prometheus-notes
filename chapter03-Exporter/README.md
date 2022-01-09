# 第三章 

本章主要介绍 Prometheus Exporter 的基本使用，包括安装、配置等等。

https://github.com/starsliao/Prometheus

Node exporter and windows exporter dashboard 

* 第三章 采集器
    * [3.1 PushGateway](3.1-pushgateway.md)
    * [3.2 Linux 主机信息采集](3.2-node-exporter.md)
    * [3.3 Windows 主机信息采集](3.3-windows-exporter.md)
    * [3.4 容器信息采集](3.4-cadvisor.md)
    * [3.5 oVirt信息采集](3.5-ovirt-exporter.md)
    * [3.6 BlackBox 网络探测](3.6-blackbox-exporter.md)
    * [3.7 SNMP 数据采集](3.7-snmp-exporter.md)
    * [3.8 ClickHouse 数据采集](3.8-clickhouse-exporter.md)
    * [3.9 Kubernetes 集群数据采集](3.9-kube-state-metrics.md)
    * [3.10 Grafana 数据采集](3.10-grafana-metrics.md)
    * [3.11 Ping 数据采集](3.11-ping-exporter.md)
    * [3.12 Kafka 数据采集](3.12-kafka-exporter.md)
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
    * [3.35 BIND 数据采集](chapter03-Exporter/3.25-bind-exporter.md)
    * [3.36 Telegraf 数据采集](chapter03-Exporter/3.36-telegraf-exporter.md)
    * [小结](END.md)


Prometheus 官方提供了一个 Exporter 的列表，里边有Prometheus 维护的 Exporter ，也有其他开源贡献者维护的 Exporter ，官方做了一个汇总。

https://prometheus.io/docs/instrumenting/exporters/