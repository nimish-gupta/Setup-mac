source lib/help.sh
source lib/utils.sh

OPTIND=1

install_apps() {
  echo "******************* Installation starts *******************"
  source lib/install.sh
  echo "******************* Installation ends *******************"
}

if [ "$#" -ne 1 ]; then
  install_apps
else
  while getopts hs:v opt; do
    case $opt in
      h)
        show_help
        exit 0
        ;;
      s)
        emailForSsh=$OPTARG
        install_apps
        exit 0
        ;;
      v)
        echo "Setup-mac 1.0.0"
        exit 0
        ;;
      *)
        echo "Invalid arguments are present"
        show_help 
        exit 1
        ;;
    esac
  done
fi

