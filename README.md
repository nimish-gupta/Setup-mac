# Setup-mac
This repo is created with the purpose of most commonly used devtools while setting up new mac.

## Table Of Contents
  * [Overview](#overview)
  * [Applications installed](#applications-installed)
  * [How to use the script](#how-to-use-script)
  * [Basic Usage](#basic-usage)
  * [Advanced Options](#advanced-options)


### Overview
Developers always had a fear when it comes to switching their macs. Because they have to start from zero in settuping their machine. 
This repo is used to install the most common apps used in development

``` Note - This repo is used build by an JS developer, so this is centric about the JS development.```

### Applications Installed
This script will install the following apps in the user's mac
  * accept the xcode license
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
  * > zsh-plugins
    -  git
    -  colored-man
    -  colorize
    -  github
    -  jira
    -  vagrant
    -  virtualenv
    -  pip
    -  python
    -  brew
    -  osx
    -  zsh-syntax-highlighting
 * > Vscode Extensions
    -  HookyQR.beautify
    -  Rubymaniac.vscode-paste-and-indent
    -  alefragnani.project-manager
    -  chrisdias.vscodeeditorconfig
    -  christian-kohler.npm-intellisense
    -  christian-kohler.path-intellisense
    -  dbaeumer.vscode-eslint
    -  donjayamanne.githistory
    -  dsznajder.es7-react-js-snippets
    -  eamodio.gitlens
    -  eg2.tslint
    -  eg2.vscode-npm-script
    -  felipecaputo.git-project-manager
    -  formulahendry.auto-close-tag
    -  formulahendry.auto-rename-tag
    -  formulahendry.terminal
    -  glen-84.sass-lint
    -  joelday.docthis
    -  jundat95.react-native-snippet
    -  kumar-harsh.graphql-for-vscode
    -  michelemelluso.code-beautifier
    -  ms-vscode.node-debug2
    -  msjsdiag.debugger-for-chrome
    -  naumovs.color-highlight
    -  neilding.language-liquid
    -  rbbit.typescript-hero
    -  robertohuertasm.vscode-icons
    -  vangware.light-plus-material
    -  vsmobile.vscode-react-native
    -  waderyan.gitblame
    -  wix.vscode-import-cost

```Note - password asked for installation of the apps is not stored or sent to any place by this repo. Password asked is generally for installing the apps```

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

### Advanced Options

  * `-h  help`
  * `-s <git-email>` to create the ssh for the git 
  * `-v  version`

```Note - Apart from the -h and -v flag, script will install all the other apps according to the various flags or default settings ```
