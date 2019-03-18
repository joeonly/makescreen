#!/bin/bash
#make-screen.sh
#param $1 screen name

. ./_make_screen_common.sh_

my_dir=~

function init_data(){
    # the length of the titles, dirs and cmds must be the same
    titles=( \
      scenario \
      uas \
      uac \
    )
    dirs=( \
      ${my_dir} \
      ${my_dir} \
      ${my_dir} \
    )
    #only a command ending with \n will be executed, otherwise it will be inputed only for you(a enter key is needed to execute it)
    cmds=( \
      "ls" \
      "sipp -sn uas -p 5061\n" \
      "sipp -sn uac 127.0.0.1:5061\n" \
    )
}

main "$@"

