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

check_app_insalled() {
  echo "$1"
  whichResult=$(which $1)
  echo "$whichResult"
  echo "$1 not found"
  if [ "$whichResult" == "$1 not found" ]
  then
    echo "not founs"
    beautify $1 $2
  fi
}