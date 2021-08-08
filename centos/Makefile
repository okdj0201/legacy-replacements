.PHONY: build run

install_all:
	# fd
	yum install -y dpkg
	wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb; sudo dpkg -i fd-musl_7.3.0_amd64.deb
	rm -rf ./fd*
	# bat
	curl -LJO https://github.com/sharkdp/bat/releases/download/v0.9.0/bat_0.9.0_amd64.deb
	rm -rf ./bat*
	# ripgrep
	dnf config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
	dnf -y install ripgrep
	# exa
	curl https://sh.rustup.rs -sSf | sh
	echo "export PATH='${HOME}/.cargo/bin:${PATH}'" >> ~/.bashrc
	source ~/.bashrc
	cargo install exa
	# nvim
	curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
	chmod u+x nvim.appimage
	cp nvim.appimage /usr/local/bin/nvim
	# peco
	git clone https://github.com/peco/peco.git
	cd peco
	make build
	cp -pr releases/peco_linux_amd64/peco /usr/local/bin/
	# fzf
	git clone https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
install_fd:
	yum install -y dpkg
	wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb; sudo dpkg -i fd-musl_7.3.0_amd64.deb
	rm -rf ./fd*
install_bat:
	yum install -y dpkg
	curl -LJO https://github.com/sharkdp/bat/releases/download/v0.9.0/bat_0.9.0_amd64.deb; sudo dpkg -i bat_0.9.0_amd64.deb
	rm -rf ./bat*
install_ripgrep:
	dnf config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
	dnf -y install ripgrep
install_exa:
	curl https://sh.rustup.rs -sSf | sh
	echo "export PATH='${HOME}/.cargo/bin:${PATH}'" >> ~/.bashrc
	source ~/.bashrc
	cargo install exa
install_nvim:
	curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
	chmod u+x nvim.appimage
	cp nvim.appimage /usr/local/bin/nvim
install_tldr:
	yum install epel-release -y
	yum install nodejs npm -y
	npm install -g tldr
install_htop:
	dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
	#dnf update
	dnf install -y htop
install_peco:
	git clone https://github.com/peco/peco.git
	cd peco
	make build
	cp -pr releases/peco_linux_amd64/peco /usr/local/bin/
install_fzf:
	git clone https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
clean:
	rm -rf ./fd* ./bat*
setup:
	../common/bin/setup.sh ${INI_FILE}
