# 第八章 集群与高可用


[Thanos 架构剖析（一）Thanos 架构总览](https://xie.infoq.cn/article/e723b90fabb9b00437d0de96b)
作者：耳东@Erdong
Thanos 作为 Prometheus 的高可用集群解决方案，本文将阐述是以怎么样的架构来实现高可用的。

 [Thanos 架构剖析（二）统一的查询入口](https://xie.infoq.cn/article/5ab89983485aaddf1d720d4a3)
作者：耳东@Erdong
Thanos Query 和 Thanos Query Frontend 共同组成了 Thanos 集群查询的统一入口。他们分别都承载了哪些功能。

 [Thanos 架构剖析（三）如何选择 Sidecar 和 Receiver](https://xie.infoq.cn/article/90aacf029c51607cd66c1500c)
作者：耳东@Erdong
Thanos 对于数据从 Prometheus 到对象存储提供了 2 种解决方式，这两种解决方式是什么，如何选择。


 [Thanos 架构剖析（四）数据存储和运维工具](https://xie.infoq.cn/article/bfb79dca2d799047b0543fdad)
作者：耳东@Erdong
Thanos 集群收集汇总了大量的监控数据，这些数据要怎么存储，集群在使用过程中有哪些小工具可以提交使用效率，这些问题你一定会在这篇文章找到答案。

 [Thanos 架构剖析（五）历史数据怎么办](https://xie.infoq.cn/article/de2aa01efc7be8087fb105aff)
作者：耳东@Erdong
Thanos 提供了长期数据存储的能力，那么这些长期存储的数据怎么办，存储空间的问题如何解决。

 [Thanos 架构剖析（六）告警规则如何管理](https://xie.infoq.cn/article/81226d4a588ec0f90aeef58fd)
作者：耳东@Erdong
Thanos 通过前边的组件解决了大部分的问题，那么最后告警规则怎么办，这一篇我们来看这个问题。


简介