_uvx() {
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
                cmd="uvx"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        uvx)
            opts="-w -c -b -i -f -U -P -C -p -V -n -q -v -h --from --with --with-editable --with-requirements --constraints --build-constraints --overrides --isolated --env-file --no-env-file --index --default-index --index-url --extra-index-url --find-links --no-index --upgrade --no-upgrade --upgrade-package --reinstall --no-reinstall --reinstall-package --index-strategy --keyring-provider --resolution --prerelease --pre --fork-strategy --config-setting --config-settings-package --no-build-isolation --no-build-isolation-package --build-isolation --exclude-newer --exclude-newer-package --link-mode --compile-bytecode --no-compile-bytecode --no-sources --no-build --build --no-build-package --no-binary --binary --no-binary-package --refresh --no-refresh --refresh-package --python --show-resolution --python-platform --generate-shell-completion --version --no-cache --cache-dir --python-preference --managed-python --no-managed-python --allow-python-downloads --no-python-downloads --python-fetch --quiet --verbose --no-color --color --native-tls --no-native-tls --offline --no-offline --allow-insecure-host --preview --no-preview --preview-features --show-settings --no-progress --no-installer-metadata --directory --project --config-file --no-config --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --from)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --with)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -w)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --with-editable)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --with-requirements)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --constraints)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --build-constraints)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -b)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --overrides)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --index)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --default-index)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --index-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -i)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --extra-index-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --find-links)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --upgrade-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --reinstall-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --index-strategy)
                    COMPREPLY=($(compgen -W "first-index unsafe-first-match unsafe-best-match" -- "${cur}"))
                    return 0
                    ;;
                --keyring-provider)
                    COMPREPLY=($(compgen -W "disabled subprocess" -- "${cur}"))
                    return 0
                    ;;
                --resolution)
                    COMPREPLY=($(compgen -W "highest lowest lowest-direct" -- "${cur}"))
                    return 0
                    ;;
                --prerelease)
                    COMPREPLY=($(compgen -W "disallow allow if-necessary explicit if-necessary-or-explicit" -- "${cur}"))
                    return 0
                    ;;
                --fork-strategy)
                    COMPREPLY=($(compgen -W "fewest requires-python" -- "${cur}"))
                    return 0
                    ;;
                --config-setting)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -C)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config-settings-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --no-build-isolation-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --exclude-newer)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --exclude-newer-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --link-mode)
                    COMPREPLY=($(compgen -W "clone copy hardlink symlink" -- "${cur}"))
                    return 0
                    ;;
                --no-build-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --no-binary-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --refresh-package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --python)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --python-platform)
                    COMPREPLY=($(compgen -W "windows linux macos x86_64-pc-windows-msvc aarch64-pc-windows-msvc i686-pc-windows-msvc x86_64-unknown-linux-gnu aarch64-apple-darwin x86_64-apple-darwin aarch64-unknown-linux-gnu aarch64-unknown-linux-musl x86_64-unknown-linux-musl riscv64-unknown-linux x86_64-manylinux2014 x86_64-manylinux_2_17 x86_64-manylinux_2_28 x86_64-manylinux_2_31 x86_64-manylinux_2_32 x86_64-manylinux_2_33 x86_64-manylinux_2_34 x86_64-manylinux_2_35 x86_64-manylinux_2_36 x86_64-manylinux_2_37 x86_64-manylinux_2_38 x86_64-manylinux_2_39 x86_64-manylinux_2_40 aarch64-manylinux2014 aarch64-manylinux_2_17 aarch64-manylinux_2_28 aarch64-manylinux_2_31 aarch64-manylinux_2_32 aarch64-manylinux_2_33 aarch64-manylinux_2_34 aarch64-manylinux_2_35 aarch64-manylinux_2_36 aarch64-manylinux_2_37 aarch64-manylinux_2_38 aarch64-manylinux_2_39 aarch64-manylinux_2_40 aarch64-linux-android x86_64-linux-android wasm32-pyodide2024 arm64-apple-ios arm64-apple-ios-simulator x86_64-apple-ios-simulator" -- "${cur}"))
                    return 0
                    ;;
                --generate-shell-completion)
                    COMPREPLY=($(compgen -W "bash elvish fish nushell powershell zsh" -- "${cur}"))
                    return 0
                    ;;
                --cache-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --python-preference)
                    COMPREPLY=($(compgen -W "only-managed managed system only-system" -- "${cur}"))
                    return 0
                    ;;
                --python-fetch)
                    COMPREPLY=($(compgen -W "automatic manual never" -- "${cur}"))
                    return 0
                    ;;
                --color)
                    COMPREPLY=($(compgen -W "auto always never" -- "${cur}"))
                    return 0
                    ;;
                --allow-insecure-host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preview-features)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --directory)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --project)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config-file)
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
    complete -F _uvx -o nosort -o bashdefault -o default uvx
else
    complete -F _uvx -o bashdefault -o default uvx
fi
