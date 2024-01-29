# Nushell Environment Config File
#
# version = "0.88.1"

def create_left_prompt [] {
    let home =  $nu.home-path

    # Perform tilde substitution on dir
    # To determine if the prefix of the path matches the home dir, we split the current path into
    # segments, and compare those with the segments of the home dir. In cases where the current dir
    # is a parent of the home dir (e.g. `/home`, homedir is `/home/user`), this comparison will
    # also evaluate to true. Inside the condition, we attempt to str replace `$home` with `~`.
    # Inside the condition, either:
    # 1. The home prefix will be replaced
    # 2. The current dir is a parent of the home dir, so it will be uneffected by the str replace
    let dir = (
        if ($env.PWD | path split | zip ($home | path split) | all { $in.0 == $in.1 }) {
            ($env.PWD | str replace $home "~")
        } else {
            $env.PWD
        }
    )

    let path_color = (if (is-admin) { ansi red_bold } else { ansi green_bold })
    let separator_color = (if (is-admin) { ansi light_red_bold } else { ansi light_green_bold })
    let path_segment = $"($path_color)($dir)"

    $path_segment | str replace --all (char path_sep) $"($separator_color)(char path_sep)($path_color)"
}

def create_right_prompt [] {
    # create a right prompt in magenta with green separators and am/pm underlined
    let time_segment = ([
        (ansi reset)
        (ansi magenta)
        (date now | format date '%x %X %p') # try to respect user's locale
    ] | str join | str replace --regex --all "([/:])" $"(ansi green)${1}(ansi magenta)" |
        str replace --regex --all "([AP]M)" $"(ansi magenta_underline)${1}")

    let last_exit_code = if ($env.LAST_EXIT_CODE != 0) {([
        (ansi rb)
        ($env.LAST_EXIT_CODE)
    ] | str join)
    } else { "" }

    ([$last_exit_code, (char space), $time_segment] | str join)
}

# Use nushell functions to define your right and left prompt
$env.PROMPT_COMMAND = {|| create_left_prompt }
# FIXME: This default is not implemented in rust code as of 2023-09-08.
$env.PROMPT_COMMAND_RIGHT = {|| create_right_prompt }

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = {|| "> " }
$env.PROMPT_INDICATOR_VI_INSERT = {|| ": " }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| "> " }
$env.PROMPT_MULTILINE_INDICATOR = {|| "::: " }

# If you want previously entered commands to have a different prompt from the usual one,
# you can uncomment one or more of the following lines.
# This can be useful if you have a 2-line prompt and it's taking up a lot of space
# because every command entered takes up 2 lines instead of 1. You can then uncomment
# the line below so that previously entered commands show with a single `🚀`.
# $env.TRANSIENT_PROMPT_COMMAND = {|| "🚀 " }
# $env.TRANSIENT_PROMPT_INDICATOR = {|| "" }
# $env.TRANSIENT_PROMPT_INDICATOR_VI_INSERT = {|| "" }
# $env.TRANSIENT_PROMPT_INDICATOR_VI_NORMAL = {|| "" }
# $env.TRANSIENT_PROMPT_MULTILINE_INDICATOR = {|| "" }
# $env.TRANSIENT_PROMPT_COMMAND_RIGHT = {|| "" }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
$env.ENV_CONVERSIONS = {
    "PATH": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
    "Path": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
}

# Directories to search for scripts when calling source or use
# The default for this is $nu.default-config-dir/scripts
$env.NU_LIB_DIRS = [
    ($nu.default-config-dir | path join 'scripts') # add <nushell-config-dir>/scripts
]

# Directories to search for plugin binaries when calling register
# The default for this is $nu.default-config-dir/plugins
$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')


#############
# self envs #
#############

# useful vars
let sdk_home = ($nu.home-path | path join "sdk")
let data_home = ($nu.home-path
    | path join ".local" 
    | path join "share"
)
let config_home = ($nu.home-path | path join ".config")
let cache_home = ($nu.home-path | path join ".cache")

# homebrew envs
$env.HOMEBREW_PREFIX = (["/", "opt", "homebrew"] | path join)
$env.HOMEBREW_CELLAR = ($env.HOMEBREW_PREFIX | path join "Cellar")
$env.HOMEBREW_REPOSITORY = $env.HOMEBREW_PREFIX

# other envs
$env.CLICOLOR = true
$env.LSCOLORS = "exfxcxdxbxegedabagacad"
$env.XDG_STATE_HOME = ($nu.home-path
    | path join ".local" 
    | path join "state"
)
$env.XMAKE_GLOBALDIR = ($sdk_home | path join "xmake")
$env.PSQLRC = ($config_home | path join "psqlrc")
$env.PSQL_HISTORY = ($env.XDG_STATE_HOME
    | path join "psql"
    | path join "history"
)
$env.NPM_CONFIG_USERCONFIG = ($config_home
    | path join "npm"
    | path join "npmrc"
)
$env.NODE_REPL_HISTORY = ($env.XDG_STATE_HOME
    | "npm"
    | "history"
)
$env.NODE_PATH = ($env.HOMEBREW_PREFIX
    | path join "lib"
    | path join "node_modules"
)
$env.NODE_PATH = ($env.NODE_PATH | split row (char esep)
    | append ($data_home | path join "npm"
        | path join "lib"
        | path join "node_modules"
    )
)

# less envs
$env.LESSKEY = ($config_home
    | path join "less"
    | path join "lesskey"
)
$env.LESSHISTFILE = ($env.XDG_STATE_HOME
    | path join "less"
    | path join "history"
)

# perl envs
$env.PERL_LOCAL_LIB_ROOT = ($sdk_home
    | path join "perl5"
)
$env.PERL5LIB = ($env.PERL_LOCAL_LIB_ROOT
    | path join "lib"
    | path join "perl5"
)
$env.PERL_MB_OPT = $"--install_base ($env.PERL_LOCAL_LIB_ROOT)"
$env.PERL_MM_OPT = $"INSTALL_BASE=($env.PERL_LOCAL_LIB_ROOT)"

# man envs
$env.MANPATH = ($env.HOMEBREW_PREFIX
    | path join "share"
    | path join "man"
)
$env.MANPATH = ($env.MANPATH | split row (char esep)
    | append ($sdk_home
        | path join "texlive"
        | path join "texmf-dist"
        | path join "doc"
        | path join "man"
    )
)
$env.INFOPATH = ($env.HOMEBREW_PREFIX
    | path join "share"
    | path join "info"
)
$env.INFOPATH = ($env.INFOPATH | split row (char esep)
    | append ($sdk_home
        | path join "texlive"
        | path join "texmf-dist"
        | path join "doc"
        | path join "info"
    )
)

# python envs
$env.JUPYTER_DATA_DIR = ($config_home | path join "jupyter")
$env.IPYTHONDIR = $env.JUPYTER_DATA_DIR
$env.JUPYTER_CONFIG_DIR = $env.JUPYTER_DATA_DIR
$env.WORKON_HOME = ($sdk_home | path join "venvs")
$env.PYTHONSTARTUP = ($config_home
    | path join "pip"
    | path join "pyrc"
)
$env.PYLINTHOME = ($env.XDG_STATE_HOME | path join "pylint")
$env.CONDARC = ($env.HOME
    | path join ".conda"
    | path join "condarc"
)
$env.MPLCONFIGDIR = ($config_home | path join "matplotlib")

# rust envs
$env.RUSTUP_HOME = ($sdk_home | path join "rustup")
$env.CARGO_HOME = ($sdk_home | path join "cargo")

# haskell envs
$env.GHCUP_USE_XDG_DIRS = true
$env.CABAL_CONFIG = ($config_home
    | path join "cabal"
    | path join "config"
)
$env.CABAL_DIR = ($sdk_home | path join "cabal")
$env.AGDA_DIR = ($config_home
    | path join "cabal"
    | path join "agda"
)

# proxy envs
$env.http_proxy = "http://127.0.0.1:49580"
$env.https_proxy = $env.http_proxy
$env.all_proxy = "socks5://127.0.0.1:49580"

# all path
$env.PATH = ($env.PATH | split row (char esep)
    | append (["/", "sbin"] | path join) # sbin
    | append ($env.HOMEBREW_PREFIX | path join "bin") # brew
    | append ($env.RUSTUP_HOME | path join "bin") # rust
    | append ($env.CARGO_HOME | path join "bin") # cargo
    | append ($env.HOME
        | path join ".local"
        | path join "bin"
    ) # user bin
    | append ($data_home
        | path join "npm"
        | path join "bin"
    ) # node
    | append ($env.CABAL_DIR | path join "bin") # cabal
    | append ($env.PERL_LOCAL_LIB_ROOT | path join "bin") # perl
    | append ($sdk_home
        | path join "texlive"
        | path join "bin"
        | path join "universal-darwin"
    ) # texlive
    | append ($env.HOMEBREW_PREFIX
        | path join "opt"
        | path join "postgresql@16"
        | path join "bin"
    ) # postgresql
    | append ($sdk_home 
        | path join "conda"
        | path join "bin"
    ) # conda
)

# starship envs
const starship_init_file = ($nu.home-path
    | path join ".config"
    | path join "starship"
    | path join "init.nu"
)
$starship_init_file | path dirname | mkdir $in
starship init nu | save -f $starship_init_file
