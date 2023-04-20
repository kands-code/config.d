## 记录我的 DNS 设置过程

1. 关闭 `dhcpcd` 对 dns 的控制

```
# root 权限
echo "nohook resolv.conf" >> /etc/dhcpcd.conf
```

> 可以卸载 `dhcpcd`

2. 使用 `systemd-resolved` 来管理

这里使用阿里家的 DNS 服务

```conf
# in /etc/systemd/resolved.conf
[Resolve]
DNS=223.5.5.5 2400:3200::1 223.6.6.6 2400:3200:baba::1 
FallbackDNS=8.8.8.8 1.1.1.1
Domains=~.
DNSSEC=allow-downgrade
MulticastDNS=yes
Cache=yes
DNSStubListener=yes
```
