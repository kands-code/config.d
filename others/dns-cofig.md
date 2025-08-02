# config for DNS

## stop `dhcpcd`

```shell
# with root
echo "nohook resolv.conf" >> /etc/dhcpcd.conf
```

> or just uninstall `dhcpcd`

## use `systemd-resolved`

Set networkmanager `/etc/NetworkManager/NetworkManager.conf`

```ini
# ...
[main]
# ...
dns=systemd-resolved
rc-manager=symlink
```

restart system or reload service

```bash
sudo systemctl restart systemd-resolved
sudo systemctl restart NetworkManager
```
