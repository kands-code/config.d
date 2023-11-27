# config for DNS

## stop `dhcpcd`

```
# with root
echo "nohook resolv.conf" >> /etc/dhcpcd.conf
```

> or just uninstall `dhcpcd`

## use `systemd-resolved`

use alidns

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
