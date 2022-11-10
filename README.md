# `config.d`

最基本配置

## bash

```bash
mkdir -p ~/.local/state
ln -s "$PWD"/other-config/bashrc ~/.bashrc
ln -s "$PWD"/other-config/profile ~/.profile
```

一些配置

## neovim

~~never used~~

```bash
ln -s "$PWD"/neovim-config ~/.config/nvim
```

## emacs

Just Doom Emacs

~~never used~~

```bash
sudo pacman -S git emacs-nativecomp ripgrep fd
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
~/.emacs.d/bin/doom sync
```

## python

```bash
ln -s "$PWD"/python-config ~/.config/pip
```

## other configs

### Locale

```bash
ln -s "$PWD/other-config/locale.conf" ~/.config/
```

### fonts

```bash
sudo ln -s "$PWD"/other-config/local.conf /etc/fonts/
```

### sddm dpi for X11

x11的dpi莫名其妙炸了，还是手动调整一下吧

```bash
sudo ln -s "$PWD"/other-config/x11-dpi.conf /etc/sddm.conf.d/
```

### Docker 镜像配置

```bash
sudo ln -s "$PWD"/other-config/docker-daemon.json /etc/docker/daemon.json
```

### npm 配置

```bash
mkdir ~/.config/npm; ln -s "$PWD"/other-config/npmrc ~/.config/npm/
```

### yarn 配置

```bash
mkdir ~/.config/yarn; touch ~/.config/yarn/config
```

## some configs

### for gsconnect

> ufw user, maybe kdeconnect

```bash
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp
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

### for maven and agda

```bash
ln -s "$PWD"/other-config/conf ~/.local/lib/
```

> `git config --global commit.gpgSign true` 来开启签名

---

> 这个仓库仅私人使用, 如果造成什么后果, 概不负责
