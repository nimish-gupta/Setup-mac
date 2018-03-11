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
  to_install=check_app_to_install $1
  echo $to_install
  if [ "$to_install" -eq 1]
  then
    echo "have to install"
    if ! [ -x "$(command -v $1)" ]; then
      beautify $1 $2
    else
      echo "$1 is already installed"
    fi
  fi
}

check_app_to_install() {
  result=0
  if [[ "$APPS" =~ "$1" ]]; then
    result=1
  fi
  return $result
}

check_any_app_installed() {
  check_app_to_install $1
  to_install=$?
  if [ $to_install -eq 1 ]
  then
    echo "have to install"
    if ! [ -x "$(command -v $1)" ]; then
      beautify $1 $2
    else
      echo "$1 is already installed"
    fi
  fi
}

