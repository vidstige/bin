#!/usr/bin/env bash

# Given an email, get the associated gravatar and put it in the users ~/.face file.

EMAIL='samuel.carlsson@volumental.com'
DESTINATION=~/.face

# Size in pixels you want, must be less than 512
SIZE='96'
HASH=`echo -n $EMAIL | awk '{print tolower($0)}' | tr -d '\n ' | md5sum --text | tr -d '\- '`
URL="http://www.gravatar.com/avatar/$HASH?s=$SIZE&d=404"
echo $URL

# Alright, grab the file, store it.
#curl -s $URL > $DESTINATION
curl -s -o $DESTINATION --fail $URL

