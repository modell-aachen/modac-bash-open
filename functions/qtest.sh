qtest() {
    local workingDir=$(pwd)
    qlone QwikiContrib
    ./backend-test "$@"
    cd "$workingDir"
}

_qtest-completion()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"

    local options="-c --no-clear --image -i --integration -p --no-pull -v --verbose -w --watch --help -h --filter"
    COMPREPLY=( $(compgen -W "$options" -- ${cur}) )
}

complete -F _qtest-completion qtest
