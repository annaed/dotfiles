#ENV VARIABLES ----------------------------------
	#enable cli colors
	export CLICOLOR=1
	export LSCOLORS=GxFxCxDxBxegedabagaced

	export JAVA_HOME=$(/usr/libexec/java_home)

	#general proxy settings
	export http_proxy=http://localhost:3128
	export https_proxy=http://localhost:3128

	#atom proxy settings
	apm config set https-proxy http://localhost:3128
	apm config set http-proxy http://localhost:3128

	#nvm through brew
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh
