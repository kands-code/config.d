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

## Proxy groups

Three proxy groups are defined in `config.yaml`:

- `PROXY` — select group and the default outbound for rules.
  Choose a node in the WebUI; the selection persists across restarts.
- `AUTO` — url-test group over all nodes from the `airport` provider.
- `FALLBACK` — fallback group over all nodes from the `airport` provider.

Rules use `PROXY` as the default target,
so switching the selected node in `PROXY` is enough for most traffic.

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

### Catppuccin

Replace the "light" theme with Catppuccin Latte,
and replace the "sunset" theme with Catppuccin Mocha.

```css
[data-theme="light"],
[data-theme="light"][data-theme] {
  color-scheme: light;

  --color-base-100: #eff1f5;
  --color-base-200: #e6e9ef;
  --color-base-300: #dce0e8;
  --color-base-content: #4c4f69;

  --color-primary: #7287fd;
  --color-primary-content: #e6e9ef;
  --color-secondary: #ccd0da;
  --color-secondary-content: #4c4f69;
  --color-accent: #dc8a78;
  --color-accent-content: #e6e9ef;
  --color-neutral: #8c8fa1;
  --color-neutral-content: #e6e9ef;

  --color-info: #04a5e5;
  --color-info-content: #e6e9ef;
  --color-success: #40a02b;
  --color-success-content: #eff1f5;
  --color-warning: #df8e1d;
  --color-warning-content: #eff1f5;
  --color-error: #d20f39;
  --color-error-content: #eff1f5;
}

[data-theme="sunset"],
[data-theme="sunset"][data-theme] {
  color-scheme: dark;

  --color-base-100: #1e1e2e;
  --color-base-200: #181825;
  --color-base-300: #11111b;
  --color-base-content: #cdd6f4;

  --color-primary: #b4befe;
  --color-primary-content: #181825;
  --color-secondary: #313244;
  --color-secondary-content: #cdd6f4;
  --color-accent: #f5e0dc;
  --color-accent-content: #181825;
  --color-neutral: #7f849c;
  --color-neutral-content: #181825;

  --color-info: #89dceb;
  --color-info-content: #181825;
  --color-success: #a6e3a1;
  --color-success-content: #1e1e2e;
  --color-warning: #f9e2af;
  --color-warning-content: #1e1e2e;
  --color-error: #f38ba8;
  --color-error-content: #1e1e2e;
}

[data-theme] .bg-green-600 {
  background-color: var(--color-success);
}
[data-theme] .bg-yellow-500 {
  background-color: var(--color-warning);
}
[data-theme] .bg-red-500 {
  background-color: var(--color-error);
}
```

## API

```bash
curl http://127.0.0.1:19581/proxies
```
