## 记录我的 DNS 设置过程

1. 关闭 `dhcpcd` 对 dns 的控制

```
# root 权限
echo "nohook resolv.conf" >> /etc/dhcpcd.conf
```

> 可以卸载 `dhcpcd`

2. 使用 `systemd-resolved` 来管理

```
# in /etc/systemd/resolved.conf
DNS=223.5.5.5 
Domains=~.
```
