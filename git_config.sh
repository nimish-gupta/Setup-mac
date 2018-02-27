setting_git_ssh() {
	set_ssh() {
		# setting git ssh key
		ssh-keygen -t rsa -b 4096 -C "$1"
		cat ~/.ssh/id_rsa.pub
		eval "$(ssh-agent -s)"
		ssh-add -K ~/.ssh/id_rsa
	}
	beautify "set_ssh" set_ssh
}

install_git() {
	# install git
	git_command() {
		brew install htop
	}
	check_app_insalled "htop" git_command
}
