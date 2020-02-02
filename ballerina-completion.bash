#/usr/bin/env bash

_ballerina() {
    local cur prev words cword
    _init_completion -n : || return

    if [ "${#words[@]}" == 2 ]; then
        COMPREPLY=($(compgen -W "new add build run test doc clean format pull push search encrypt grpc openapi version dist update" -- "$cur"))
        return
    fi

    if [ "${#words[@]}" == 3 ]; then
        case $prev in 
            run|build|doc|format)
                if [ -f Ballerina.toml ]; then
                    pushd src > /dev/null
                    _filedir
                    popd > /dev/null
                elif [ $prev == 'run' ]; then
                    _filedir 'bal|jar'
                else
                    _filedir 'bal'
                fi
                return
                ;;
            test|push)
                if [ -f Ballerina.toml ]; then
                    pushd src > /dev/null
                    _filedir
                    popd > /dev/null
                fi
                return
                ;;

        esac
    fi
}

complete -F _ballerina ballerina

