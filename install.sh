#!/bin/bash

###########################################################
# Author - DN-debug
# Description - Peux OS LXQt Conky configuration script
###########################################################

if zenity --question --text="Want to proceed?"
then 

    dir="$HOME/.config/conky"

    # check if conky directory exists or not!
    if [[ ! -d $dir ]]; then
        # using two step process instead of one liner
        mkdir $dir
        mkdir -p $dir/design/two
    else
        mkdir -p $dir/design/two # one liner when parent folder is not available
    fi


    echo "changing directory"
    cd ../

    cp -r Peux-Conky-2/conky/* $dir/design/two
    notify-send 'Fetched folder has been moved to ~/.config/conky/design/'


else
    notify-send "Operation skipped!"
fi

rm -rf /tmp/fetcher/Peux-Conky-2
notify-send "Done!"





