# Setup-mac
These are general scripts to be installed in  the dev environment for a increase in devlopment speed
This scripts will
  - install the following apps in the mac:
    * [xcode-select](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/xcode-select.1.html)
    * [brew](https://brew.sh/)
    * [git](https://git-scm.com/)
    * [ruby](http://www.ruby-lang.org/en/)
    * [rvm](https://rvm.io/)
    * [rails](http://rubyonrails.org/)
    * [wget](https://www.gnu.org/software/wget/)
    * [chrome](https://www.google.com/chrome/)
    * [vscode](https://code.visualstudio.com/)
    * [sublime text](https://www.sublimetext.com/)
    * [zsh](http://ohmyz.sh/)
    * [iterm2](https://www.iterm2.com/)
    * [nvm](https://github.com/creationix/nvm)
    * [yarn](https://yarnpkg.com/lang/en/)
    * [node](https://nodejs.org/en/)
    * [heroku-cli](https://devcenter.heroku.com/articles/heroku-cli)
  - accept the xcode license


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

```Note - Apart from the -h and -v flag, script will install all the other apps according to the various flags or default settings ```
