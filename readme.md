# Media Wiki Backup
A simple bash script, runable in windows via [gitbash](https://git-for-windows.github.io/) which makes use of [wget](https://eternallybored.org/misc/wget/) to backup a private/restricted media wiki - for example on [miraheze.org](https://miraheze.org/).

## Prerequisites
In windows, install
* [gitbash](https://git-for-windows.github.io/)
* [wget](https://eternallybored.org/misc/wget/)
  * Download `wget.exe` (32 or 64-bit) to `C:\Program Files\Git\mingw64\bin\wget.exe` _(ensure the file is named "wget.exe")_
* Chrome browser

This should run natively in linux.

## Instructions for use
1. Edit [backup_media_wiki.sh](backup_media_wiki.sh) and change the top variables to your own domain/output folder
1. Log into your restricted wiki using Chrome
1. Open Web Developer tools (Ctrl+Shift+I), click network tab
1. Browse to a restricted page (i.e. any page past the main index)
1. Copy the "Cookie:" section of the Request Headers into the [backup_media_wiki.sh](backup_media_wiki.sh) script
1. Run the [backup_media_wiki.sh](backup_media_wiki.sh) script in gitbash _(drag and drop the script into gitbash and press Enter)_