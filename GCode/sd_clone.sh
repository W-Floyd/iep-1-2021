#!/bin/bash

if [ "${#}" != '1' ]; then
    echo 'Must have only one input!'
    exit
fi

################################################################################
# ask "Question?" Y|N
#
# Where Y|N is an optional default
# Copied from https://gist.github.com/davejamesmiller/1965569
################################################################################

ask() {
    # https://djm.me/ask
    local prompt default reply

    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read reply </dev/tty

        # Default?
        if [ -z "$reply" ]; then
            reply=$default
        fi

        # Check if the reply is valid
        case "$reply" in
        Y* | y*) return 0 ;;
        N* | n*) return 1 ;;
        esac

    done
}

while true; do
    __directory="$(inotifywait /run/media/william/ -e create -q | grep 'CREATE,ISDIR' | sed -e 's/ CREATE,ISDIR //')"
    if ask "Is ${__directory} a drive you wish to wipe?" 'Y'; then
        rsync --delete -avz "${1}" "${__directory}/"
        sync
        umount "${__directory}"
        echo 'Done, unmounted.'
    else
        echo 'Okay, skipping...'
    fi
done
exit
