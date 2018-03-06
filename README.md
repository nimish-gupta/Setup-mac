# Setup-mac
These are general scripts to be installed in  the dev environment for a increase in devlopment speed
This scripts will
  - install the following apps in the mac:
    * xcode-select
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
  - accept the license


### How to use the script
  1. `git clone https://github.com/nimish-gupta/Setup-mac.git`
  2. `cd Setup-mac`
  3. `chmod +x sripts.sh`
  4. `sudo ln -s "$(pwd)/scripts.sh" /usr/local/bin/setup-mac`

### Basic Usage
To install the apps with default settings
`setup-mac`

### To install the apps with advanced Options
`setup-mac [Options]`

##### Options

  * `-h  help`
  * `-s <git-email>` to create the ssh for the git 
  * `-v  version`
