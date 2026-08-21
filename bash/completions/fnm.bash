_fnm() {
    local i cur prev opts cmd
    COMPREPLY=()
    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
        cur="$2"
    else
        cur="${COMP_WORDS[COMP_CWORD]}"
    fi
    prev="$3"
    cmd=""
    opts=""

    for i in "${COMP_WORDS[@]:0:COMP_CWORD}"
    do
        case "${cmd},${i}" in
            ",$1")
                cmd="fnm"
                ;;
            fnm,alias)
                cmd="fnm__subcmd__alias"
                ;;
            fnm,completions)
                cmd="fnm__subcmd__completions"
                ;;
            fnm,current)
                cmd="fnm__subcmd__current"
                ;;
            fnm,default)
                cmd="fnm__subcmd__default"
                ;;
            fnm,env)
                cmd="fnm__subcmd__env"
                ;;
            fnm,exec)
                cmd="fnm__subcmd__exec"
                ;;
            fnm,help)
                cmd="fnm__subcmd__help"
                ;;
            fnm,i)
                cmd="fnm__subcmd__install"
                ;;
            fnm,install)
                cmd="fnm__subcmd__install"
                ;;
            fnm,list)
                cmd="fnm__subcmd__list"
                ;;
            fnm,list-remote)
                cmd="fnm__subcmd__list__subcmd__remote"
                ;;
            fnm,ls)
                cmd="fnm__subcmd__list"
                ;;
            fnm,ls-remote)
                cmd="fnm__subcmd__list__subcmd__remote"
                ;;
            fnm,unalias)
                cmd="fnm__subcmd__unalias"
                ;;
            fnm,uni)
                cmd="fnm__subcmd__uninstall"
                ;;
            fnm,uninstall)
                cmd="fnm__subcmd__uninstall"
                ;;
            fnm,use)
                cmd="fnm__subcmd__use"
                ;;
            fnm__subcmd__help,alias)
                cmd="fnm__subcmd__help__subcmd__alias"
                ;;
            fnm__subcmd__help,completions)
                cmd="fnm__subcmd__help__subcmd__completions"
                ;;
            fnm__subcmd__help,current)
                cmd="fnm__subcmd__help__subcmd__current"
                ;;
            fnm__subcmd__help,default)
                cmd="fnm__subcmd__help__subcmd__default"
                ;;
            fnm__subcmd__help,env)
                cmd="fnm__subcmd__help__subcmd__env"
                ;;
            fnm__subcmd__help,exec)
                cmd="fnm__subcmd__help__subcmd__exec"
                ;;
            fnm__subcmd__help,help)
                cmd="fnm__subcmd__help__subcmd__help"
                ;;
            fnm__subcmd__help,install)
                cmd="fnm__subcmd__help__subcmd__install"
                ;;
            fnm__subcmd__help,list)
                cmd="fnm__subcmd__help__subcmd__list"
                ;;
            fnm__subcmd__help,list-remote)
                cmd="fnm__subcmd__help__subcmd__list__subcmd__remote"
                ;;
            fnm__subcmd__help,unalias)
                cmd="fnm__subcmd__help__subcmd__unalias"
                ;;
            fnm__subcmd__help,uninstall)
                cmd="fnm__subcmd__help__subcmd__uninstall"
                ;;
            fnm__subcmd__help,use)
                cmd="fnm__subcmd__help__subcmd__use"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        fnm)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        alias)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        completions)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        current)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        default)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        env)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        exec)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help)
            opts="list-remote list install use env completions alias unalias default current exec uninstall help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__alias)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__completions)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__current)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__default)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__env)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__exec)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__install)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__list__subcmd__remote)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__unalias)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__uninstall)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        fnm__subcmd__help__subcmd__use)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        install)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        list)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        list__subcmd__remote)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unalias)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        uninstall)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        use)
            opts="-h -V --node-dist-mirror --fnm-dir --multishell-path --log-level --arch --version-file-strategy --corepack-enabled --resolve-engines --help --version list-remote ls-remote list ls install i use env completions alias unalias default current exec uninstall uni help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --node-dist-mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fnm-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --multishell-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "quiet error info" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --version-file-strategy)
                    COMPREPLY=($(compgen -W "local recursive" -- "${cur}"))
                    return 0
                    ;;
                --resolve-engines)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

if [[ "${BASH_VERSINFO[0]}" -eq 4 && "${BASH_VERSINFO[1]}" -ge 4 || "${BASH_VERSINFO[0]}" -gt 4 ]]; then
    complete -F _fnm -o nosort -o bashdefault -o default fnm
else
    complete -F _fnm -o bashdefault -o default fnm
fi
