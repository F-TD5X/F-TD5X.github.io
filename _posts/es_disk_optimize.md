title: ES 磁盘参数导致的性能问题
tags: Elasticsearch
date: 2023-06-01 16:38
---

## 起因

一个ES集群发现磁盘读写带宽指标`disk.read_bytes`异常高，差不多到了 4Gbps，但查询流量不应该表现出这样的行为，并不存在拉取数据的场景，也没有大查询。

## 原因

后来发现磁盘的 `read_ahead` 指标为 8MiB (16384 sectors)，调整为ES官方推荐的 128 KiB 后，磁盘带宽指标就恢复正常了。

