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

### fonts

```bash
sudo ln -s "$PWD"/other-config/local.conf /etc/fonts/
```

### bash

```bash
ln -s "$PWD"/other-config/bashrc ~/.bashrc
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
