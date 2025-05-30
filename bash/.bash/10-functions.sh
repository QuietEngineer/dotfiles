# endeavouros stuff

################################################################################
## Some generally useful functions.
## Consider uncommenting aliases below to start using these functions.
##
## October 2021: removed many obsolete functions. If you still need them, please look at
## https://github.com/EndeavourOS-archive/EndeavourOS-archiso/raw/master/airootfs/etc/skel/.bashrc

_open_files_for_editing() {
    # Open any given document file(s) for editing (or just viewing).
    # Note1:
    #    - Do not use for executable files!
    # Note2:
    #    - Uses 'mime' bindings, so you may need to use
    #      e.g. a file manager to make proper file bindings.

    if [ -x /usr/bin/exo-open ] ; then
        echo "exo-open $@" >&2
        setsid exo-open "$@" >& /dev/null
        return
    fi
    if [ -x /usr/bin/xdg-open ] ; then
        for file in "$@" ; do
            echo "xdg-open $file" >&2
            setsid xdg-open "$file" >& /dev/null
        done
        return
    fi

    echo "$FUNCNAME: package 'xdg-utils' or 'exo' is required." >&2
}

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##
# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff

# Re-run the previous command with root privileges; Hollywood-style
override() {
    local HISTTIMEFORMAT=
    PREVCMD=`history 2 | head -n1 | cut -c8-`
    eval sc $PREVCMD
}

# Make and cd into new directory
mcdir() {
    if [ -n "$1" ]; then
        mkdir -p $1;
        cd $1;
    else
        echo "mcdir (pathname)"
    fi
}
