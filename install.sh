# source git_config.sh

# echo "*********For installing the apps you have to accept the xcodebuild license*********"
# # Accept the licesne by the xcodebuild
# sudo xcodebuild -license accept

# xcode-select --install >/dev/null 2>&1

# # installing brew
# install_brew() {
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#   brew doctor
# }
# check_any_app_installed "brew" install_brew

# # installing git
# install_git

# # installing yarn
# install_yarn() {
#   brew install yarn
# }

# check_any_app_installed "yarn" install_yarn
# setting email for the git ssh
# if ! [ -z "$emailForSsh" ]
# then
#   setting_git_ssh $emailForSsh
# fi

# # installing ruby rvm rails
# install_rails() {
#   echo "gem: --no-document" >> ~/.gemrc
#   curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
# }
# check_any_app_installed "rails" install_rails

# # installing wget
# install_wget() {
#   brew install wget --with-libressl
# }
# check_any_app_installed "wget" install_wget

# # installing chrome 
# install_chrome() {
#   wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
#   hdiutil mount googlechrome.dmg
#   sudo cp -R "/Volumes/Google\ Chrome/Google\ Chrome.app" /Applications
#   hdiutil unmount "/Volumes/Google Chrome"
#   ln -s /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /usr/local/bin/chrome 
#   rm -rf googlechrome.dmg
# }
# check_any_app_installed "chrome" install_chrome

# # installing vscode
# install_vscode() {
#   wget https://az764295.vo.msecnd.net/stable/f88bbf9137d24d36d968ea6b2911786bfe103002/VSCode-darwin-stable.zip
#   unzip -a VSCode-darwin-stable.zip
#   rm -rf VSCode-darwin-stable.zip
#   sudo cp -R Visual\ Studio\ Code.app /Applications
#   alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
#   rm -rf Visual\ Studio\ Code.app
# }

# check_any_app_installed "code" install_vscode

# # installing sublime
# install_sublime() {
#   wget https://download.sublimetext.com/Sublime%20Text%20Build%203143.dmg
#   hdiutil mount Sublime\ Text\ Build\ 3143.dmg
#   sudo cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
#   hdiutil unmount "/Volumes/Sublime Text"
#   ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
#   rm -rf Sublime\ Text\ Build\ 3143.dmg 
# }

# check_any_app_installed "subl" install_sublime

# # installing zsh && plugins
# install_zsh() {
#   brew install zsh zsh-completions zsh-autosuggestions
#   sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#   source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc
# }

# check_any_app_installed "zsh" install_zsh

# # installing iterm 
# install_iterm() {
#   wget https://iterm2.com/downloads/stable/iTerm2-3_1_5.zip
#   unzip -a iTerm2-3_1_5.zip 
#   rm -rf iTerm2-3_1_5.zip
#   sudo cp -R iTerm.app /Applications/
#   rm -rf iTerm.app
#   printf "\nplugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)" >> ~/.zshrc
#   alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code" >> ~/.zshrc
#   alias iterm="/Applications/iTerm.app/Contents/MacOS/iTerm2">> ~/.zshrc
# }

# check_any_app_installed "iterm" install_iterm
# # installing vscode extensions  
# VSCODE_EXTENSIONS="HookyQR.beautify Rubymaniac.vscode-paste-and-indent alefragnani.project-manager chrisdias.vscodeeditorconfig christian-kohler.npm-intellisense christian-kohler.path-intellisense dbaeumer.vscode-eslint donjayamanne.githistory dsznajder.es7-react-js-snippets eamodio.gitlens eg2.tslint eg2.vscode-npm-script felipecaputo.git-project-manager formulahendry.auto-close-tag formulahendry.auto-rename-tag formulahendry.terminal glen-84.sass-lint joelday.docthis jundat95.react-native-snippet kumar-harsh.graphql-for-vscode michelemelluso.code-beautifier ms-vscode.node-debug2 msjsdiag.debugger-for-chrome naumovs.color-highlight neilding.language-liquid rbbit.typescript-hero robertohuertasm.vscode-icons vangware.light-plus-material vsmobile.vscode-react-native waderyan.gitblame wix.vscode-import-cost"

# for VSCODE_EXTENSION in $VSCODE_EXTENSIONS
# do
#  	code --install-extension $VSCODE_EXTENSION
# done

# # installing nvm
# install_nvm() {
#   wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
# }

# check_any_app_installed "nvm" install_nvm

# installing heroku
install_heroku() {
  brew install heroku/brew/heroku
}

check_any_app_installed "heroku" install_heroku