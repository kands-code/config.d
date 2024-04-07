# most use variables
let sdk_home = ($nu.home-path
    | path join ".local" 
    | path join "sdk"
)
let data_home = ($nu.home-path
    | path join ".local" 
    | path join "share"
)
let config_home = ($nu.home-path | path join ".config")
let cache_home = ($nu.home-path | path join ".cache")
use ($nu.default-config-dir
    | path join "theme.nu"
);
$env.XDG_STATE_HOME = ($nu.home-path
    | path join ".local" 
    | path join "state"
)
$env.EDITOR = "pico"
$env.VISUAL = "code"

# for shell
$env.ZDOTDIR = ($config_home | path join "zsh")
$env.HISTFILE = ($env.XDG_STATE_HOME | path join "zsh_history")
$env.CLICOLOR = true
$env.LSCOLORS = "exfxcxdxbxegedabagacad"

# homebrew envs
$env.HOMEBREW_PREFIX = (["/", "opt", "homebrew"] | path join)
$env.HOMEBREW_CELLAR = ($env.HOMEBREW_PREFIX | path join "Cellar")
$env.HOMEBREW_REPOSITORY = $env.HOMEBREW_PREFIX

# opam & rye envs
$env.RYE_HOME = ($sdk_home | path join "rye")
$env.OPAMROOT = ($sdk_home | path join "opam")
$env.OPAM_SWITCH_PREFIX = ($env.OPAMROOT | path join "default")
$env.CAML_LD_LIBRARY_PATH = $"($env.OPAM_SWITCH_PREFIX
    | path join "lib"
    | path join "stublibs"):($env.OPAM_SWITCH_PREFIX
    | path join "lib"
    | path join "ocaml"
    | path join "stublibs"):($env.OPAM_SWITCH_PREFIX
    | path join "lib"
    | path join "ocaml")"
$env.OCAML_TOPLEVEL_PATH = ($env.OPAM_SWITCH_PREFIX
    | path join "lib"
    | path join "toplevel"
)

# for utils
$env.MANPATH = $"/usr/share/man:/usr/local/share/man:($env.HOMEBREW_PREFIX
    | path join "share"
    | path join "man"):($env.OPAM_SWITCH_PREFIX
    | path join "man"):($env.HOMEBREW_PREFIX
    | path join "opt"
    | path join "erlang"
    | path join "lib"
    | path join "erlang"
    | path join "man")"
$env.INFOPATH = $"/usr/share/info:/usr/local/share/info:($env.HOMEBREW_PREFIX
    | path join "share"
    | path join "info")"
$env.XMAKE_GLOBALDIR = $sdk_home
$env.PSQLRC = ($config_home | path join "psqlrc")
$env.PSQL_HISTORY = ($env.XDG_STATE_HOME | path join "psql_history")

# for nodejs
$env.NPM_CONFIG_USERCONFIG = ($config_home | path join "npm" | path join "npmrc")
$env.NODE_REPL_HISTORY = ($env.XDG_STATE_HOME | "npm" | "history")
$env.NODE_PATH = $"($env.HOMEBREW_PREFIX
    | path join "lib"
    | path join "node_modules"):($data_home
    | path join "npm"
    | path join "lib"
    | path join "node_modules")"

# for less
$env.LESSKEY = ($config_home | path join "less" | path join "lesskey")
$env.LESSHISTFILE = ($env.XDG_STATE_HOME | path join "less_history")

# for java
$env.JAVA_HOME = (/usr/libexec/java_home)
let maven_version = "3.9.6"
$env.M2_HOME = ($sdk_home | path join "maven" | path join $maven_version)
$env.GRADLE_USER_HOME = $"($data_home)/gradle-repo"

# for python
$env.JUPYTER_DATA_DIR = ($config_home | path join "jupyter")
$env.IPYTHONDIR = $env.JUPYTER_DATA_DIR
$env.JUPYTER_CONFIG_DIR = $env.JUPYTER_DATA_DIR
$env.WORKON_HOME = ($sdk_home | path join "venvs")
$env.PYTHONSTARTUP = ($config_home | path join "pip" | path join "pyrc")
$env.PYLINTHOME = ($env.XDG_STATE_HOME | path join "pylint")
$env.MPLCONFIGDIR = ($config_home | path join "matplotlib")

# for rust
$env.RUSTUP_HOME = ($sdk_home | path join "rustup")
$env.CARGO_HOME = ($sdk_home | path join "cargo")
$env.RUST_BACKTRACE = "full"

# all path
$env.PATH = ($env.PATH | split row (char esep)
    | prepend ($env.HOMEBREW_PREFIX | path join "sbin") # for brew
    | prepend ($env.HOMEBREW_PREFIX | path join "bin") # for brew
    | prepend ($env.CARGO_HOME | path join "bin") # for cargo
    | prepend ($env.RUSTUP_HOME | path join "bin") # for rust
    | prepend ($env.OPAM_SWITCH_PREFIX | path join "bin") # for ocaml
    | prepend ($env.RYE_HOME| path join "shims") # for rye
    | append (["/", "local", "bin"] | path join) # for user global
    | append (["/", "usr", "sbin"] | path join) # for adim bin
    | append (["/", "sbin"] | path join) # for sbin
    | append ($env.HOME | path join ".local" | path join "bin") # for user local
    | append ($env.M2_HOME | path join "bin") # for maven
    | append ($data_home | path join "npm" | path join "bin") # for node/npm
    | append ($env.HOMEBREW_PREFIX
        | path join "opt"
        | path join "postgresql@16"
        | path join "bin"
    ) # for postgresql
)

# proxy envs
$env.http_proxy = "http://127.0.0.1:49580"
$env.https_proxy = $env.http_proxy
$env.all_proxy = "socks5://127.0.0.1:49580"
