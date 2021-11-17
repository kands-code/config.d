# `config.d`

一些配置

## neovim

```bash
ln -s neovim-config ~/.config/nvim
```

## emacs

```bash
ln -s emacs-config ~/.emacs.d
```

## python

```bash
ln -s python-config ~/.config/pip
```

## other configs

### fonts

```bash
ln -s other-config/local.conf /etc/fonts/local.conf
```

### bash

```bash
ln -s other-config/bashrc ~/.bashrc
```

### mime for racket

```bash
ln -s other-config/x-scheme.xml ~/.local/share/mime/text/x-scheme.xml
```

### sddm dpi for X11

x11的dpi莫名其妙炸了，还是手动调整一下吧

```bash
ln -s other-config/x11-dpi.conf /etc/sddm.conf.d/dpi.conf
```

### jupyter config

jupyter配置的备份

```bash
ln -s other-config/jupyter_notebook_config.py ~/.config/jupyter/jupyter_notebook_config.py
```

### Docker 镜像配置

```bash
ln -s other-config/docker-daemon.json /etc/docker/daemon.json
```
