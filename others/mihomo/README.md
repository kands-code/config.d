# Mihomo

Mihomo config.

## Subscription

Set your subscription URL in `config.yaml`:

```yaml
proxy-providers:
  airport:
    url: "YOUR_SUB_URL"
```

Mihomo handles both full Clash YAML and base64 node lists.

## macOS

```bash
# install
brew install mihomo

# config
sudo mkdir -p /opt/homebrew/etc/mihomo/logs
cp config.yaml /opt/homebrew/etc/mihomo/config.yaml

# test
mihomo -t -d /opt/homebrew/etc/mihomo -f /opt/homebrew/etc/mihomo/config.yaml

# service
sudo cp mihomo.plist /Library/LaunchDaemons/one.metacubex.mihomo.plist
sudo launchctl bootstrap system /Library/LaunchDaemons/one.metacubex.mihomo.plist

# uninstall
sudo launchctl bootout system /Library/LaunchDaemons/one.metacubex.mihomo.plist
sudo rm /Library/LaunchDaemons/one.metacubex.mihomo.plist
```

### DNS

TUN uses fake-ip; system DNS must point to Mihomo first:

```bash
networksetup -setdnsservers "Wi-Fi" 198.18.0.1 223.5.5.5
```

`198.18.0.1` is the fake-ip gateway.
`223.5.5.5` is a fallback when Mihomo is stopped.
Restore DHCP DNS:

```bash
networksetup -setdnsservers "Wi-Fi" Empty
```

## Linux

```bash
# install binary
sudo cp mihomo /usr/local/bin/mihomo
sudo chmod +x /usr/local/bin/mihomo

# config
sudo mkdir -p /etc/mihomo
sudo cp config.yaml /etc/mihomo/config.yaml

# service
sudo cp mihomo.service /etc/systemd/system/mihomo.service
sudo systemctl daemon-reload
sudo systemctl enable --now mihomo

# logs
journalctl -u mihomo -f
```

### DNS

TUN uses fake-ip; system DNS must point to Mihomo first.

systemd-resolved:

```bash
sudo resolvectl dns <interface> 198.18.0.1 223.5.5.5
```

Traditional `/etc/resolv.conf`:

```text
nameserver 198.18.0.1
nameserver 223.5.5.5
```

`198.18.0.1` is the fake-ip gateway.
`223.5.5.5` is a fallback when Mihomo is stopped.
Some distros overwrite `/etc/resolv.conf`; use the distro's persistent DNS method.

## WebUI

```text
http://127.0.0.1:19581/ui/
```

## API

```bash
curl http://127.0.0.1:19581/proxies
```
