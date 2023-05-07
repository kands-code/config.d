# `config.d`

最基本配置

## bash

```bash
mkdir -p ~/.local/state
ln -s "$PWD"/other-config/bashrc ~/.bashrc
ln -s "$PWD"/other-config/profile ~/.profile
```

> USTC texlive repository:
>   http://mirrors.ustc.edu.cn/CTAN/systems/texlive/tlnet/

一些配置

## code

保存了一部分当前的插件和配置，以防万一

## python

```bash
ln -s "$PWD"/python-config ~/.config/pip
```

### nautilus

对于 Blackbox Terminal，使用 `OpenInBlackbox` 这个插件

```shell
git clone https://github.com/phucnoob/OpenInBlackBox.git oib
```

需要 `python-nautilus` 库，使用 `./install.sh` 安装

## other configs

### Locale

```bash
ln -s "$PWD/other-config/locale.conf" ~/.config/
```

### fonts

```bash
sudo ln -s "$PWD"/other-config/local.conf /etc/fonts/
```

### Paru

```bash
ln -s "$PWD/other-config/paru.conf" ~/.config/
```

### Docker 镜像配置

```bash
sudo ln -s "$PWD"/other-config/docker-daemon.json /etc/docker/daemon.json
```

### npm 配置

```bash
mkdir ~/.config/npm; ln -s "$PWD"/other-config/npmrc ~/.config/npm/
```

## some configs

### for gsconnect

> ufw user, maybe kdeconnect

```bash
sudo ufw allow 1716:1764/udp
sudo ufw allow 1716:1764/tcp
sudo ufw reload
```

### for wget

```bash
echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$XDG_CONFIG_HOME/wgetrc"
```

### for dircolors

```bash
ln -s "$PWD/other-config/dircolors" ~/.config/dircolors
```

### for R

```bash
ln -s "$PWD"/other-config/Rprofile" ~/.local/state/Rprofile
```

### close beep

使用systemd service

```bash
systemctl --user enable nobeep.service --now
```

### Gnome Terminal

备份方式

```bash
dconf dump '/org/gnome/terminal/legacy/profiles:/' > "$PWD/other-config/gnome-profile.dconf"
```

恢复

```bash
dconf load '/org/gnome/terminal/legacy/profiles:/' < "$PWD/other-config/gnome-profile.dconf"
```

### for maven and agda

```bash
ln -s "$PWD"/other-config/conf ~/.local/lib/
```

> `git config --global commit.gpgSign true` 来开启签名

---

> 这个仓库仅私人使用, 如果造成什么后果, 概不负责
