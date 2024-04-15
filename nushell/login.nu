# nushell open
def nu_open [arg, --raw (-r)] {
    if $raw {
        open -r $arg
    } else {
        open $arg
    }
}
alias open = ^open

# nushell clear
def nu_clear [] {
    clear
}
alias clear = ^clear