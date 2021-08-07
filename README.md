# legacy-replacements
## Overview
* Installer to setup local machine. Replace legacy commands and add some aliases.
* You can install following packages at one shot.
  * fd
  * bat
  * ripgrep
  * exa
  * nvim
  * tldr
  * htop
* Also, you can put some aliases to your init files(.bashrc/zshrc/etc..).
* Currently, this repository includes only for
  * CentOS8.x
  * Mac

## How to use
### Install
#### Install all packages
```
$ cd ${centos or mac}
$ make install_all
```

#### Install each packages
```
$ cd ${centos or mac}
$ make install_${package_name}

# package_name=fd, bat, ripgrep, etc...

e.g.)
$ cd mac
$ make install_fd
```

### Setup
```
$ cd ${centos or mac}
$ make setup ${INI_FILES}

# INI_FILES=~/.bashrc or ~/.zshrc
```
