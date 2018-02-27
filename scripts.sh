source help.sh
source utils.sh

source git_config.sh

OPTIND=1

while getopts hs: opt; do
	case $opt in
		h)
			show_help
			exit 0
			;;
		s)
			setting_git_ssh $OPTARG
			exit 0
			;;
		*)
			show_help 
			exit 1
			;;
	esac
done

source install.sh

