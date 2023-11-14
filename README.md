# CONFIG-D

this repository stores all configs that may be helpful

## environment.d

xdg environment config, just some useful environment

## other-config

configs for some utils

### nano

for nano editor highlightings

### neofetch

some self config

### systemd

some user daemons, maybe useful

### bashrc

config for bash

```shell
ln -s "<path to project>"/other-config/bashrc ~/.bashrc
```

### dns-config.md

some config steps for using systemd-resolve

### docker-daemon.json

docker config

```shell
ln -s "<path to project>"/other-config/docker-daemon.json /etc/docker/daemon.json
```

### gitconfig

git config

```shell
ln -s "<path to project>"/other-config/gitconfig ~/.gitconfig
```

should replace this information with your own

```shell
git config --global user.name "your github user name"
git config --global user.email "your email for gpg key"
git config --global user.signingkey "secret key with ! sign"
```

### local.conf

font config

```shell
sudo ln -s "<path to project>"/other-config/local.conf /etc/fonts/local.conf
```

should replace the font to with your own

### locale.conf

locale config

```shell
ln -s "<path to project>"/other-config/locale.conf ~/.config/locale.conf
```

### pandoc-meta

pandoc config for generating pdfs

a use case:

```shell
# pandoc wrapper
if command -v pandoc >/dev/null 2>&1; then
  pd() {
    local ff="$1"
    shift
    local tt="$1"
    shift
    local filename="$1"
    shift
    local outputname="${filename%.*}.$tt"
    pandoc -f "$ff" -t "$tt" \
      "$filename" \
      -o "$outputname" \
      --pdf-engine=lualatex \
      --metadata-file="<path to project>/other-config/pandoc-meta"
    "$@"
  }
fi
```

### paru.conf

paru config

```shell
ln -s "<path to project>"/other-config/paru.conf ~/.config/paru.conf
```

### profile

profile

```shell
ln -s "<path to project>"/other-config/profile ~/.profile
```

#### npmrc

config for npm

```shell
mkdir -p ~/.config/npm
ln -s "<path to project>"/other-config/npmrc ~/.config/npm/
```

#### Agda

should replace the path in `agda/libraries` with your own

```shell
# if use 20-haskell.conf
mkdir -p ~/.config/cabal
ln -s "<path to project>"/other-config/agda ~/.config/cabal/agda
```

#### RProfile

there is a backup for R profile

```r
options(repos=structure(c(CRAN="https://mirrors.ustc.edu.cn/CRAN/")))
# options("browser"="firefox")
options("browser"="microsoft-edge")
options("editor"="nano")
options("encoding"="utf8")
```

## pip

python config

```shell
ln -s "<path to project>"/pip ~/.config/pip
```

## zsh

zsh config

```shell
ln -s "<path to project>"/zsh/zshenv ~/.zshenv
mkdir -p ~/.config/zsh
ln -s "<path to project>"/zsh/zshrc ~/.config/zsh/.zshrc
# for ssh config
ln -s "<path to project>"/zsh/ssh.conf ~/.ssh/config
```
