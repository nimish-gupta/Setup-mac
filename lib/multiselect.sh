select_apps() {
    echo "Select the apps to install -"

    cmd=(dialog --separate-output --checklist "Select the multi apps using the cursor: (default all apps are selected)" 22 76 16)
    options=(1 "git" on
            2 "ruby, rvm, rails" on
            3 "wget" on
            4 "chrome" on
            5 "vscode" on
            6 "sublime-text" on
            7 "zsh" on
            8 "iterm2" on
            9 "node, yarn" on
            10 "nvm" on
            11 "heroku-cli" on)
    choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    APPS=''
    for choice in $choices
    do
        clear
        case $choice in
            1)
                APPS="$APPS git"
                ;;
            2)
                APPS="$APPS rails"
                ;;
            3)
                APPS="$APPS wget"
                ;;
            4)
                APPS="$APPS chrome"
                ;;
            5)
                APPS="$APPS vscode"
                ;;
            6)
                APPS="$APPS sublime-text"
                ;;
            7)
                APPS="$APPS zsh"
                ;;
            8)
                APPS="$APPS iterm2"
                ;;
            9)
                APPS="$APPS yarn"
                ;;
            10)
                APPS="$APPS nvm"
                ;;
            11)
                APPS="$APPS heroku-cli" 
                ;;
        esac
    done
}

select_vscode_extensions() {
    echo "Select the vscode-extensions to install -"
   cmd=(dialog --separate-output --checklist "Select the multi vscode-extensios using the cursor: (default all are selected)" 0 0 50)
   options=(1 "HookyQR.beautify" on
            2 "Rubymaniac.vscode-paste-and-indent" on
            3 "alefragnani.project-manager" on
            4 "chrisdias.vscodeeditorconfig" on
            5 "christian-kohler.npm-intellisense" on
            6 "christian-kohler.path-intellisense" on
            7 "dbaeumer.vscode-eslint" on
            8 "donjayamanne.githistory" on
            9 "dsznajder.es7-react-js-snippets" on
            10 "eamodio.gitlens" on
            11 "eg2.tslint" on
            12 "eg2.vscode-npm-script" on
            13 "felipecaputo.git-project-manager" on
            14 "formulahendry.auto-close-tag" on
            15 "formulahendry.auto-rename-tag" on
            16 "formulahendry.terminal" on
            17 "glen-84.sass-lint" on
            18 "joelday.docthis" on
            19 "jundat95.react-native-snippet" on
            20 "kumar-harsh.graphql-for-vscode" on
            21 "michelemelluso.code-beautifier" on
            22 "ms-vscode.node-debug2" on
            23 "msjsdiag.debugger-for-chrome" on
            24 "naumovs.color-highlight" on
            25 "neilding.language-liquid" on
            26 "rbbit.typescript-hero" on
            27 "robertohuertasm.vscode-icons" on
            28 "vangware.light-plus-material" on
            29 "vsmobile.vscode-react-native" on
            30 "waderyan.gitblame" on
            31 "wix.vscode-import-cost" on)
    choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    VSCODE_EXTENSIONS=''
    for choice in $choices
    do
        clear
        case $choice in
            1) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS HookyQR.beautify"
                ;;
            2) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS Rubymaniac.vscode-paste-and-indent"
                ;;
            3) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS alefragnani.project-manager"
                ;;
            4) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS chrisdias.vscodeeditorconfig"
                ;;
            5) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS christian-kohler.npm-intellisense"
                ;;
            6) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS christian-kohler.path-intellisense"
                ;;
            7) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS dbaeumer.vscode-eslint"
                ;;
            8) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS donjayamanne.githistory"
                ;;
            9) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS dsznajder.es7-react-js-snippets"
                ;;
            10) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS eamodio.gitlens"
                ;;
            11) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS eg2.tslint"
                ;;
            12) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS eg2.vscode-npm-script"
                ;;
            13) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS felipecaputo.git-project-manager"
                ;;
            14) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS formulahendry.auto-close-tag"
                ;;
            15) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS formulahendry.auto-rename-tag"
                ;;
            16) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS formulahendry.terminal"
                ;;
            17) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS glen-84.sass-lint"
                ;;
            18) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS joelday.docthis"
                ;;
            19)
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS jundat95.react-native-snippet"
                ;;
            20) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS kumar-harsh.graphql-for-vscode"
                ;;
            21) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS michelemelluso.code-beautifier"
                ;;
            22) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS ms-vscode.node-debug2"
                ;;
            23) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS msjsdiag.debugger-for-chrome"
                ;;
            24) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS naumovs.color-highlight"
                ;;
            25) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS neilding.language-liquid"
                ;;
            26) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS rbbit.typescript-hero"
                ;;
            27) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS robertohuertasm.vscode-icons"
                ;;
            28) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS vangware.light-plus-material"
                ;;
            29) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS vsmobile.vscode-react-native"
                ;;
            30) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS waderyan.gitblame"
                ;;
            31) 
                VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS wix.vscode-import-cost"
                ;;
        esac
    done 
}
