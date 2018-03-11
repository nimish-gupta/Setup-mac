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
