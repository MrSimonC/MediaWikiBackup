# Media Wiki Backup
A simple bash script, runable in windows via [gitbash](https://git-for-windows.github.io/) which makes use of [wget](https://eternallybored.org/misc/wget/) to backup a private/restricted media wiki - for example on [miraheze.org](https://miraheze.org/).

## Prerequisites
In windows, install
* [gitbash](https://git-for-windows.github.io/)
* [wget](https://eternallybored.org/misc/wget/)

This should run natively in linux.

## Instructions for use
* Edit [backup_media_wiki.sh](backup_media_wiki.sh) and change the top variables to your own domain/output folder
* Log into your restricted wiki
* Open Web Developer tools, network tab
* Browse to a restricted page
* Copy the "Cookie:" section of the Request Headers into the [backup_media_wiki.sh](backup_media_wiki.sh) script
* Run the [backup_media_wiki.sh](backup_media_wiki.sh) script