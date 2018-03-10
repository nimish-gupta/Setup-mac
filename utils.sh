beautify_config() {
  echo "-------$1 config starts-------"
  $2
  echo "-------$1 config ends-------"
}

beautify() {
  if [ $# -ne 2 ]
  then
    echo "Few arguments are supplied to beautify command"
    exit 1
  fi
  echo "-------$1 installation starts-------"
  $2
  echo "-------$1 installation completed-------"
}

check_brew_app_insalled() {
  isInstalled=$(brew ls --versions "$1")
  if [ -z "$isInstalled" ]
  then
    beautify $1 $2
  else
    echo "$1 is already installed"
  fi
}

check_any_app_installed() {
  if ! [ -x "$(command -v $1)" ]; then
    beautify $1 $2
  else
    echo "$1 is already installed"
  fi
}

