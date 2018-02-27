#! /bin/bash
files=("HookyQR.beautify" "Rubymaniac.vscode-paste-and-indent" "alefragnani.project-manager" "chrisdias.vscodeeditorconfig" "christian-kohler.npm-intellisense" "christian-kohler.path-intellisense" "dbaeumer.vscode-eslint" "donjayamanne.githistory" "dsznajder.es7-react-js-snippets" "eamodio.gitlens" "eg2.tslint" "eg2.vscode-npm-script" "felipecaputo.git-project-manager" "formulahendry.auto-close-tag" "formulahendry.auto-rename-tag" "formulahendry.terminal" "glen-84.sass-lint" "joelday.docthis" "jundat95.react-native-snippet" "kumar-harsh.graphql-for-vscode" "michelemelluso.code-beautifier" "ms-vscode.node-debug2" "msjsdiag.debugger-for-chrome" "naumovs.color-highlight" "neilding.language-liquid" "rbbit.typescript-hero" "robertohuertasm.vscode-icons" "vangware.light-plus-material" "vsmobile.vscode-react-native" "waderyan.gitblame" "wix.vscode-import-cost")

menuitems() {
    echo "Exclude Extensions:"
    for i in ${!files[@]}; do
        printf "%3d%s) %s\n" $((i+1)) "${choices[i]:- }" "${files[i]}"
    done
    [[ "$msg" ]] && echo "$msg"; :
}

prompt="Enter an option (enter again to uncheck, press RETURN when done): "
while menuitems && read -rp "$prompt" num && [[ "$num" ]]; do
    clear
    [[ "$num" != *[![:digit:]]* ]] && (( num > 0 && num <= ${#files[@]} )) || {
        msg="Invalid option: $num"; continue
    }
    if [ $num == ${#files[@]} ];then
      exit
    fi
    ((num--)); msg="${files[num]} was ${choices[num]:+un-}selected"
    [[ "${choices[num]}" ]] && choices[num]="" || choices[num]="x"
done

selections=()

printf "You selected"; msg=" nothing"
for i in ${!files[@]}; do
    [[ "${choices[i]}" ]] && { printf " %s" "${files[i]}"; msg=""; } && selections+=("${files[i]} ")
done

printf '%s' "${selections[@]}"
