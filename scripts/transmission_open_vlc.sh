#!/bin/bash

# This script is for opening with vlc a video file when it has finish downloading.
# Transmission is a torrent client that support executing a script when a download is completed.
# This script check if a torrent is made of a single video file and open it with vlc.
# For safety, a prompt asks you if you really want to open the file.

array_contains () {
    local seeking=$1; shift
    local in=1
    for element; do
        if [[ $element == $seeking ]]; then
            in=0
            break
        fi
    done
    return $in
}

# echo "$TR_TORRENT_DIR $TR_TORRENT_NAME" > ~/test.log

# Check if the filepath has a video extension
extension="${TR_TORRENT_NAME##*.}"
supported_ext=(mkv avi mp4)
garray_contains $extension "${supported_ext[@]}" || exit 


# Confirm opening with vlc
zenity --question --text="Do you wish to open \"$TR_TORRENT_NAME\" in vlc?"
if [ $? = 0 ]; then
    vlc "${TR_TORRENT_DIR}"/"${TR_TORRENT_NAME}"
else
    exit
fi