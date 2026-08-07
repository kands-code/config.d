_tinymist() {
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
                cmd="tinymist"
                ;;
            tinymist,compile)
                cmd="tinymist__subcmd__compile"
                ;;
            tinymist,completion)
                cmd="tinymist__subcmd__completion"
                ;;
            tinymist,cov)
                cmd="tinymist__subcmd__cov"
                ;;
            tinymist,dap)
                cmd="tinymist__subcmd__dap"
                ;;
            tinymist,doc)
                cmd="tinymist__subcmd__doc"
                ;;
            tinymist,generate-script)
                cmd="tinymist__subcmd__generate__subcmd__script"
                ;;
            tinymist,help)
                cmd="tinymist__subcmd__help"
                ;;
            tinymist,lint)
                cmd="tinymist__subcmd__lint"
                ;;
            tinymist,lsp)
                cmd="tinymist__subcmd__lsp"
                ;;
            tinymist,package)
                cmd="tinymist__subcmd__package"
                ;;
            tinymist,preview)
                cmd="tinymist__subcmd__preview"
                ;;
            tinymist,probe)
                cmd="tinymist__subcmd__probe"
                ;;
            tinymist,query)
                cmd="tinymist__subcmd__query"
                ;;
            tinymist,task)
                cmd="tinymist__subcmd__task"
                ;;
            tinymist,test)
                cmd="tinymist__subcmd__test"
                ;;
            tinymist,trace-lsp)
                cmd="tinymist__subcmd__trace__subcmd__lsp"
                ;;
            tinymist__subcmd__doc,configure)
                cmd="tinymist__subcmd__doc__subcmd__configure"
                ;;
            tinymist__subcmd__doc,help)
                cmd="tinymist__subcmd__doc__subcmd__help"
                ;;
            tinymist__subcmd__doc,new)
                cmd="tinymist__subcmd__doc__subcmd__new"
                ;;
            tinymist__subcmd__doc__subcmd__help,configure)
                cmd="tinymist__subcmd__doc__subcmd__help__subcmd__configure"
                ;;
            tinymist__subcmd__doc__subcmd__help,help)
                cmd="tinymist__subcmd__doc__subcmd__help__subcmd__help"
                ;;
            tinymist__subcmd__doc__subcmd__help,new)
                cmd="tinymist__subcmd__doc__subcmd__help__subcmd__new"
                ;;
            tinymist__subcmd__help,compile)
                cmd="tinymist__subcmd__help__subcmd__compile"
                ;;
            tinymist__subcmd__help,completion)
                cmd="tinymist__subcmd__help__subcmd__completion"
                ;;
            tinymist__subcmd__help,cov)
                cmd="tinymist__subcmd__help__subcmd__cov"
                ;;
            tinymist__subcmd__help,dap)
                cmd="tinymist__subcmd__help__subcmd__dap"
                ;;
            tinymist__subcmd__help,doc)
                cmd="tinymist__subcmd__help__subcmd__doc"
                ;;
            tinymist__subcmd__help,generate-script)
                cmd="tinymist__subcmd__help__subcmd__generate__subcmd__script"
                ;;
            tinymist__subcmd__help,help)
                cmd="tinymist__subcmd__help__subcmd__help"
                ;;
            tinymist__subcmd__help,lint)
                cmd="tinymist__subcmd__help__subcmd__lint"
                ;;
            tinymist__subcmd__help,lsp)
                cmd="tinymist__subcmd__help__subcmd__lsp"
                ;;
            tinymist__subcmd__help,package)
                cmd="tinymist__subcmd__help__subcmd__package"
                ;;
            tinymist__subcmd__help,preview)
                cmd="tinymist__subcmd__help__subcmd__preview"
                ;;
            tinymist__subcmd__help,probe)
                cmd="tinymist__subcmd__help__subcmd__probe"
                ;;
            tinymist__subcmd__help,query)
                cmd="tinymist__subcmd__help__subcmd__query"
                ;;
            tinymist__subcmd__help,task)
                cmd="tinymist__subcmd__help__subcmd__task"
                ;;
            tinymist__subcmd__help,test)
                cmd="tinymist__subcmd__help__subcmd__test"
                ;;
            tinymist__subcmd__help,trace-lsp)
                cmd="tinymist__subcmd__help__subcmd__trace__subcmd__lsp"
                ;;
            tinymist__subcmd__help__subcmd__doc,configure)
                cmd="tinymist__subcmd__help__subcmd__doc__subcmd__configure"
                ;;
            tinymist__subcmd__help__subcmd__doc,new)
                cmd="tinymist__subcmd__help__subcmd__doc__subcmd__new"
                ;;
            tinymist__subcmd__help__subcmd__package,docs)
                cmd="tinymist__subcmd__help__subcmd__package__subcmd__docs"
                ;;
            tinymist__subcmd__help__subcmd__query,checkPackage)
                cmd="tinymist__subcmd__help__subcmd__query__subcmd__checkPackage"
                ;;
            tinymist__subcmd__help__subcmd__query,lsif)
                cmd="tinymist__subcmd__help__subcmd__query__subcmd__lsif"
                ;;
            tinymist__subcmd__help__subcmd__query,packageDocs)
                cmd="tinymist__subcmd__help__subcmd__query__subcmd__packageDocs"
                ;;
            tinymist__subcmd__help__subcmd__query,scip)
                cmd="tinymist__subcmd__help__subcmd__query__subcmd__scip"
                ;;
            tinymist__subcmd__help__subcmd__query,tyckScope)
                cmd="tinymist__subcmd__help__subcmd__query__subcmd__tyckScope"
                ;;
            tinymist__subcmd__help__subcmd__task,preview)
                cmd="tinymist__subcmd__help__subcmd__task__subcmd__preview"
                ;;
            tinymist__subcmd__package,docs)
                cmd="tinymist__subcmd__package__subcmd__docs"
                ;;
            tinymist__subcmd__package,help)
                cmd="tinymist__subcmd__package__subcmd__help"
                ;;
            tinymist__subcmd__package__subcmd__help,docs)
                cmd="tinymist__subcmd__package__subcmd__help__subcmd__docs"
                ;;
            tinymist__subcmd__package__subcmd__help,help)
                cmd="tinymist__subcmd__package__subcmd__help__subcmd__help"
                ;;
            tinymist__subcmd__query,checkPackage)
                cmd="tinymist__subcmd__query__subcmd__checkPackage"
                ;;
            tinymist__subcmd__query,help)
                cmd="tinymist__subcmd__query__subcmd__help"
                ;;
            tinymist__subcmd__query,lsif)
                cmd="tinymist__subcmd__query__subcmd__lsif"
                ;;
            tinymist__subcmd__query,packageDocs)
                cmd="tinymist__subcmd__query__subcmd__packageDocs"
                ;;
            tinymist__subcmd__query,scip)
                cmd="tinymist__subcmd__query__subcmd__scip"
                ;;
            tinymist__subcmd__query,tyckScope)
                cmd="tinymist__subcmd__query__subcmd__tyckScope"
                ;;
            tinymist__subcmd__query__subcmd__help,checkPackage)
                cmd="tinymist__subcmd__query__subcmd__help__subcmd__checkPackage"
                ;;
            tinymist__subcmd__query__subcmd__help,help)
                cmd="tinymist__subcmd__query__subcmd__help__subcmd__help"
                ;;
            tinymist__subcmd__query__subcmd__help,lsif)
                cmd="tinymist__subcmd__query__subcmd__help__subcmd__lsif"
                ;;
            tinymist__subcmd__query__subcmd__help,packageDocs)
                cmd="tinymist__subcmd__query__subcmd__help__subcmd__packageDocs"
                ;;
            tinymist__subcmd__query__subcmd__help,scip)
                cmd="tinymist__subcmd__query__subcmd__help__subcmd__scip"
                ;;
            tinymist__subcmd__query__subcmd__help,tyckScope)
                cmd="tinymist__subcmd__query__subcmd__help__subcmd__tyckScope"
                ;;
            tinymist__subcmd__task,help)
                cmd="tinymist__subcmd__task__subcmd__help"
                ;;
            tinymist__subcmd__task,preview)
                cmd="tinymist__subcmd__task__subcmd__preview"
                ;;
            tinymist__subcmd__task__subcmd__help,help)
                cmd="tinymist__subcmd__task__subcmd__help__subcmd__help"
                ;;
            tinymist__subcmd__task__subcmd__help,preview)
                cmd="tinymist__subcmd__task__subcmd__help__subcmd__preview"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        tinymist)
            opts="-h -V --log-filter --help --version probe lsp dap trace-lsp query preview compile lint package completion generate-script doc task cov test help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --log-filter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__compile)
            opts="-f -h --name --root --input --font-path --ignore-system-fonts --package-path --package-cache-path --when --format --pages --pdf-standard --no-pdf-tags --ppi --save-lock --lockfile --help <INPUT> [OUTPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --when)
                    COMPREPLY=($(compgen -W "never onSave onType onDocumentHasTitle script" -- "${cur}"))
                    return 0
                    ;;
                --format)
                    COMPREPLY=($(compgen -W "pdf png svg html bundle" -- "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -W "pdf png svg html bundle" -- "${cur}"))
                    return 0
                    ;;
                --pages)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lockfile)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__completion)
            opts="-h --help bash elvish fig fish powershell zsh nushell"
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
        tinymist__subcmd__cov)
            opts="-h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__dap)
            opts="-h --mirror --replay --font-path --ignore-system-fonts --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --replay)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__doc)
            opts="-h --help new configure help"
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
        tinymist__subcmd__doc__subcmd__configure)
            opts="-h --name --priority --help <INPUT>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --priority)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__doc__subcmd__help)
            opts="new configure help"
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
        tinymist__subcmd__doc__subcmd__help__subcmd__configure)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__doc__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__doc__subcmd__help__subcmd__new)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__doc__subcmd__new)
            opts="-h --name --root --input --font-path --ignore-system-fonts --package-path --package-cache-path --help <INPUT>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__generate__subcmd__script)
            opts="-o -h --output --help bash elvish fig fish powershell zsh nushell"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__help)
            opts="probe lsp dap trace-lsp query preview compile lint package completion generate-script doc task cov test help"
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
        tinymist__subcmd__help__subcmd__compile)
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
        tinymist__subcmd__help__subcmd__completion)
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
        tinymist__subcmd__help__subcmd__cov)
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
        tinymist__subcmd__help__subcmd__dap)
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
        tinymist__subcmd__help__subcmd__doc)
            opts="new configure"
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
        tinymist__subcmd__help__subcmd__doc__subcmd__configure)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__doc__subcmd__new)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__generate__subcmd__script)
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
        tinymist__subcmd__help__subcmd__help)
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
        tinymist__subcmd__help__subcmd__lint)
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
        tinymist__subcmd__help__subcmd__lsp)
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
        tinymist__subcmd__help__subcmd__package)
            opts="docs"
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
        tinymist__subcmd__help__subcmd__package__subcmd__docs)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__preview)
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
        tinymist__subcmd__help__subcmd__probe)
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
        tinymist__subcmd__help__subcmd__query)
            opts="lsif scip packageDocs checkPackage tyckScope"
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
        tinymist__subcmd__help__subcmd__query__subcmd__checkPackage)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__query__subcmd__lsif)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__query__subcmd__packageDocs)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__query__subcmd__scip)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__query__subcmd__tyckScope)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__task)
            opts="preview"
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
        tinymist__subcmd__help__subcmd__task__subcmd__preview)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__help__subcmd__test)
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
        tinymist__subcmd__help__subcmd__trace__subcmd__lsp)
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
        tinymist__subcmd__lint)
            opts="-h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --diagnostic-format --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --diagnostic-format)
                    COMPREPLY=($(compgen -W "human short" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__lsp)
            opts="-h --mirror --replay --font-path --ignore-system-fonts --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --replay)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__package)
            opts="-h --help docs help"
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
        tinymist__subcmd__package__subcmd__docs)
            opts="-h --watch --namespace --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --help [INPUT] [OUTPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --namespace)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__package__subcmd__help)
            opts="docs help"
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
        tinymist__subcmd__package__subcmd__help__subcmd__docs)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__package__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__preview)
            opts="-h --format --preview-mode --page-title --partial-rendering --invert-colors --refresh-style --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --task-id --data-plane-host --control-plane-host --host --not-primary --open --no-open --verbose --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --format)
                    COMPREPLY=($(compgen -W "paged html bundle" -- "${cur}"))
                    return 0
                    ;;
                --preview-mode)
                    COMPREPLY=($(compgen -W "document slide" -- "${cur}"))
                    return 0
                    ;;
                --page-title)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partial-rendering)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --invert-colors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --refresh-style)
                    COMPREPLY=($(compgen -W "on-save on-type" -- "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --task-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --data-plane-host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --control-plane-host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__probe)
            opts="-h --help"
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
        tinymist__subcmd__query)
            opts="-h --help lsif scip packageDocs checkPackage tyckScope help"
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
        tinymist__subcmd__query__subcmd__checkPackage)
            opts="-o -h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --path --id --output --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__query__subcmd__help)
            opts="lsif scip packageDocs checkPackage tyckScope help"
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
        tinymist__subcmd__query__subcmd__help__subcmd__checkPackage)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__query__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__query__subcmd__help__subcmd__lsif)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__query__subcmd__help__subcmd__packageDocs)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__query__subcmd__help__subcmd__scip)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__query__subcmd__help__subcmd__tyckScope)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__query__subcmd__lsif)
            opts="-o -h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --path --id --output --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__query__subcmd__packageDocs)
            opts="-o -h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --path --id --output --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__query__subcmd__scip)
            opts="-o -h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --path --id --output --stats-output --index-summary-output --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --stats-output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --index-summary-output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__query__subcmd__tyckScope)
            opts="-o -h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --path --id --output --max-type-chars --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --max-type-chars)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__task)
            opts="-h --help preview help"
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
        tinymist__subcmd__task__subcmd__help)
            opts="preview help"
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
        tinymist__subcmd__task__subcmd__help__subcmd__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__task__subcmd__help__subcmd__preview)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 4 ]] ; then
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
        tinymist__subcmd__task__subcmd__preview)
            opts="-h --name --root --input --font-path --ignore-system-fonts --package-path --package-cache-path --task --when --format --preview-mode --page-title --partial-rendering --invert-colors --refresh-style --help <INPUT>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --task)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --when)
                    COMPREPLY=($(compgen -W "never onSave onType onDocumentHasTitle script" -- "${cur}"))
                    return 0
                    ;;
                --format)
                    COMPREPLY=($(compgen -W "paged html bundle" -- "${cur}"))
                    return 0
                    ;;
                --preview-mode)
                    COMPREPLY=($(compgen -W "document slide" -- "${cur}"))
                    return 0
                    ;;
                --page-title)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --partial-rendering)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --invert-colors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --refresh-style)
                    COMPREPLY=($(compgen -W "on-save on-type" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        tinymist__subcmd__test)
            opts="-h --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --update --coverage --print-coverage --pretty --watch --dashboard --no-dashboard --verbose --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --print-coverage)
                    COMPREPLY=($(compgen -W "never short full" -- "${cur}"))
                    return 0
                    ;;
                --pretty)
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
        tinymist__subcmd__trace__subcmd__lsp)
            opts="-h --persist --rpc-kind --mirror --replay --root --font-path --ignore-system-fonts --package-path --package-cache-path --pdf-standard --no-pdf-tags --ppi --features --input --creation-timestamp --cert --help [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --rpc-kind)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mirror)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --replay)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --font-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package-cache-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --pdf-standard)
                    COMPREPLY=($(compgen -W "1.4 1.5 1.6 1.7 2.0 a-1b a-1a a-2b a-2u a-2a a-3b a-3u a-3a a-4 a-4f a-4e ua-1" -- "${cur}"))
                    return 0
                    ;;
                --ppi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --features)
                    COMPREPLY=($(compgen -W "html a11y-extras bundle" -- "${cur}"))
                    return 0
                    ;;
                --input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --creation-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    COMPREPLY=($(compgen -f "${cur}"))
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
    complete -F _tinymist -o nosort -o bashdefault -o default tinymist
else
    complete -F _tinymist -o bashdefault -o default tinymist
fi
