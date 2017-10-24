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
### Get cookie information
1. Log into your restricted wiki using Chrome
1. Open Web Developer tools (Ctrl+Shift+I)
1. Click Network tab
1. Browse to a restricted page (i.e. any page past the main index e.g. "EMIS")
1. In the Developer tools, under "Name", click the document name of the link you clicked e.g. "EMIS"
1. A side tab will appear. Click "Headers" tab.
1. Within Headers tab, under "Request Heades", copy the "Cookie:" section (including the "Cookie: ")

### Update script
1. Edit [backup_media_wiki.sh](backup_media_wiki.sh) and change the top variables to your own output folder or media wiki website
1. Paste in your cookie information into the script
1. Run the [backup_media_wiki.sh](backup_media_wiki.sh) script in gitbash _(drag and drop the script into gitbash and press Enter)_