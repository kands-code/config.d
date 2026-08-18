# config.d

Personal configuration files for Linux and macOS.

Run commands from this directory, or replace `$PWD` with the actual path.

## bash

Bash configuration for Linux.

```bash
ln -sf "$PWD/bash/bashrc" "$HOME/.bashrc"
ln -sf "$PWD/bash/profile" "$HOME/.profile"
mkdir -p "$HOME/.local/share/bash"
ln -sf "$PWD/bash/completions" "$HOME/.local/share/bash/completions"
```

## zsh

Zsh configuration, currently tuned for macOS.

```bash
ln -sf "$PWD/zsh/zshenv" "$HOME/.zshenv"
mkdir -p "$HOME/.config/zsh"
ln -sf "$PWD/zsh/zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "$PWD/zsh/zfunc" "$HOME/.config/zsh/zfunc"
```

## nvim

Neovim configuration using `vim.pack` for plugins.

```bash
ln -sf "$PWD/nvim" "$HOME/.config/nvim"
```

## helix

Helix editor configuration and themes.

```bash
ln -sf "$PWD/helix" "$HOME/.config/helix"
```

## pip

Python pip and REPL history configuration.

```bash
ln -sf "$PWD/pip" "$HOME/.config/pip"
```

## others

Miscellaneous configurations.

### mihomo

Mihomo config, LaunchDaemon/plist, and systemd unit. See
[`others/mihomo/README.md`](others/mihomo/README.md) for setup instructions.

### systemd/user

User systemd units:

- `rclone-onedrive.service` — mount OneDrive via rclone.
- `pipewire-session-manager.service` — symlink to the system wireplumber unit.

```bash
ln -sf "$PWD/others/systemd" "$HOME/.config/systemd"
```

### git

Git user config. Copy and edit the placeholders before use.

```bash
mkdir -p "$HOME/.config/git"
cp "$PWD/others/git.conf" "$HOME/.config/git/config"
nano "$HOME/.config/git/config"
```

### ssh

SSH client config.

```bash
mkdir -p "$HOME/.ssh"
ln -sf "$PWD/others/ssh.conf" "$HOME/.ssh/config"
```

### npm

npm user config.

```bash
ln -sf "$PWD/others/npmrc" "$HOME/.config/npmrc"
```

### paru

Paru config.

```bash
ln -sf "$PWD/others/paru.conf" "$HOME/.config/paru.conf"
```

### fastfetch

Fastfetch display config.

```bash
ln -sf "$PWD/others/fastfetch" "$HOME/.config/fastfetch"
```

### fontconfig

Fontconfig replacement list. Install globally with `sudo`.

```bash
sudo ln -sf "$PWD/others/local.conf" "/etc/fonts/local.conf"
```

### NetworkManager / systemd-resolved

NetworkManager config hands DNS over to `systemd-resolved`.

```bash
sudo ln -sf "$PWD/others/nm.conf" "/etc/NetworkManager/NetworkManager.conf"
```

Set upstream DNS in `/etc/systemd/resolved.conf`:

```ini
[Resolve]
DNS=198.18.0.1 223.5.5.5
```

`198.18.0.1` is Mihomo's fake-ip DNS and must stay first;
`223.5.5.5` is the fallback when Mihomo is stopped.
Multiple DNS servers are supported and tried in order.

Then restart both services:

```bash
sudo systemctl restart systemd-resolved
sudo systemctl restart NetworkManager
```

### tlp

TLP battery threshold config.

```bash
sudo ln -sf "$PWD/others/tlp-bat.conf" "/etc/tlp.d/10-tlp-bat.conf"
```

### irbrc

Ruby IRB history config.

```bash
ln -sf "$PWD/others/irbrc" "$HOME/.config/irbrc"
```

### unused.conf

Unused but possibly useful environment variables. Not installed by default.
