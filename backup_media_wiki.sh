#!/bin/bash

# The folder you want to save the files to e.g. "c:\wikibackup\". Note the forward slashes for gitbash
FOLDER_OUT="/c/wikibackup/"

# Customise to your domain
URL="https://bch.miraheze.org/wiki/Main_Page"
RESTRICT_TO_DOMAINS="bch.miraheze.org,static.miraheze.org"

# Replace the below with contents from your Request Headers, from Chrome web tools, after you've signed into your wiki and navigated to a restricted page
COOKIE_STRING=\
"REPLACE ME WITH YOUR COOKIE STRING e.g. Cookie: VEE=visualeditor; ..."

mkdir -p "$FOLDER_OUT"
echo Saving to: "$FOLDER_OUT"
if [ $? -ne 0 ]; then
    echo "Can't create or move to folder. Stop"
	exit
fi

wget --directory-prefix="$FOLDER_OUT" --span-hosts --domains=$RESTRICT_TO_DOMAINS --page-requisites --convert-links --adjust-extension --random-wait --mirror --no-parent --header "$COOKIE_STRING" "$URL"
