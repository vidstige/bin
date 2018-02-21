#!/bin/bash
# tested on High Sierra
set -e
SIZE=256
TARGET=~/Pictures/gravatar
record_name=$(dscl . read /Users/vidstige RecordName)
parts=($record_name)
email=${parts[2]}
hash=$(echo -n $email | md5)

url=https://www.gravatar.com/avatar/$hash?s=$SIZE
curl --silent "$url" -o $TARGET

# remove old photo
dscl . delete "/Users/$USER" jpegphoto
dscl . delete "/Users/$USER" Picture
sudo dscl . create "/Users/$USER" Picture "$TARGET"
