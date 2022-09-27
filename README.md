# `config.d`

一些配置

## neovim

```bash
ln -s "$PWD"/neovim-config ~/.config/nvim
```

## emacs

```bash
ln -s "$PWD"/emacs-config ~/.emacs.d
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

### bash

```bash
ln -s "$PWD"/other-config/bashrc ~/.bashrc
ln -s "$PWD"/other-config/profile ~/.profile
# for history
mkdir ~/.local/share/bash/
touch ~/.local/share/bash/history
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

```bash
sudo ln -s "$PWD/other-config/nobeep.conf" /etc/modprobe.d/
```

现在不够了，需要 service

```bash
systemctl --user enable nobeep.service --now
```

### Gnome Terminal Profile

```bash
dconf load '/org/gnome/terminal/legacy/profiles:/' < "$PWD/other-config/gnome-profile.dconf"
```

### for maven and agda

> ~~摆烂, `.m2` 目录还是需要~~

```bash
ln -s "$PWD"/other-config/conf ~/.local/lib/
```

> `git config --global commit.gpgSign true` 来开启签名

---

> 这个仓库仅私人使用, 如果造成什么后果, 概不负责
