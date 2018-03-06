# scripts
These are general scripts to be installed in  the dev environment for a increase in devlopment speed
This scripts install the following apps in the mac:
  * xcode
  * brew
  * git
  * ruby rvm rails
  * wget
  * chrome
  * vscode
  * sublime text
  * zsh
  * iterm
  * vscode extensions
  * nvm
  * zsh auto suggestions plugin


### Before installation
Add the executable permissions to the script
`chmod +x scripts.sh`
To create a symlink of the script
`sudo ln -s "$(pwd)/scripts.sh" /usr/local/bin/setup-mac`

### Basic Usage
To install the apps with default settings
`setup-mac`

### To install the apps with advanced Options
`./scripts.sh [Options]`

##### Options

  * `-h  help`
  * `-s <git-email>` to create the ssh for the git 
