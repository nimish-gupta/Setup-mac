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
		brew install git
	}
	check_any_app_installed "git" git_command
}

configure_git_config_file() {
	git_config_command() {
		git_config_path="./scripts/.gitconfig"
		echo "Do you want to modify for gitconfig($HOME/.gitconfig) for shortcuts"
		PS3='Please enter your choice: '
		options=("Replace" "Create" "Append" "Nothing")
		select opt in "${options[@]}"
		do
			case $opt in
				"Replace")
					cp "$git_config_path" "$HOME/.gitconfig"
					break
					;;
				"Create")
					cp "$git_config_path" "$HOME/.gitconfig"
					break
					;;
				"Append")
					cat "$git_config_path" >> "$HOME/.gitconfig"
					break
					;;
				"Nothing")
					break
					;;
				*) echo invalid option;;
			esac
		done
	}

	beautify_config "git" git_config_command
}