# # install xcode-select
# xcode-select --install

# # install brew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew doctor
install_git

# # install ruby rvm rails
# echo "gem: --no-document" >> ~/.gemrc
# curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails

# # install wget
# brew install wget --with-libressl

# # install chrome 
# wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
# open ~/Downloads/googlechrome.dmg

# # install vscode 
# wget https://az764295.vo.msecnd.net/stable/f88bbf9137d24d36d968ea6b2911786bfe103002/VSCode-darwin-stable.zip
# open ~/Downloads/VSCode-darwin-stable.zip.download
# open ~/Downloads/Visual\ Studio\ Code.app/
# sudo mv ~/Downloads/Visual\ Studio\ Code.app /Applications/

# # install sublime 
# wget https://download.sublimetext.com/Sublime%20Text%20Build%203143.dmg
# open ~/Downloads/Sublime\ Text\ Build\ 3143.dmg.download/
# open ~/Downloads/Sublime\ Text\ Build\ 3143.dmg
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# # install zsh
# brew install zsh zsh-completions
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# # install iterm 
# wget https://iterm2.com/downloads/stable/iTerm2-3_1_5.zip
# open ~/Downloads/iTerm2-3_1_5.zip.download
# open ~/Downloads/iTerm.app
# echo plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting) >> ~/.zshrc
# alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code" >> ~/.zshrc

# # install vscode extensions  
# VSCODE_EXTENSIONS="HookyQR.beautify Rubymaniac.vscode-paste-and-indent alefragnani.project-manager chrisdias.vscodeeditorconfig christian-kohler.npm-intellisense christian-kohler.path-intellisense dbaeumer.vscode-eslint donjayamanne.githistory dsznajder.es7-react-js-snippets eamodio.gitlens eg2.tslint eg2.vscode-npm-script felipecaputo.git-project-manager formulahendry.auto-close-tag formulahendry.auto-rename-tag formulahendry.terminal glen-84.sass-lint joelday.docthis jundat95.react-native-snippet kumar-harsh.graphql-for-vscode michelemelluso.code-beautifier ms-vscode.node-debug2 msjsdiag.debugger-for-chrome naumovs.color-highlight neilding.language-liquid rbbit.typescript-hero robertohuertasm.vscode-icons vangware.light-plus-material vsmobile.vscode-react-native waderyan.gitblame wix.vscode-import-cost"

# for VSCODE_EXTENSION in $VSCODE_EXTENSIONS
# do
#  	code --install-extension $VSCODE_EXTENSION
# done

# # install nvm
# wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash



# # install auto suggestions plugin
# brew install zsh-autosuggestions
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc



