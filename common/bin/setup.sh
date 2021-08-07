#!/bin/bash -u
# Add settings to init files like(.bashrc/.zshrc)
INIT_FILE=$1

if [ ! -e ${INIT_FILE} ]; then
	echo "${INIT_FILE} does not exists. Exiting..."
	exit 1
fi

TLDR=`which tldr`

cat <<EOF >> ${INIT_FILE}
# Settings added by legacy-replacements(https://github.com/okdj0201/legacy-replacements)
## nvim
if type "nvim" > /dev/null 2>&1
then
    alias vim='nvim'
fi

## bat
if type "bat" > /dev/null 2>&1
then
    alias cat='bat'
fi

## ripgrep
if type "ripgrep" > /dev/null 2>&1
then
    alias grep='rg'
fi

## exa
if type "exa" > /dev/null 2>&1
then
    alias ls='exa -la'
fi

## tldr
if type "tldr" > /dev/null 2>&1
then
    TLDR=`which tldr`
    function man(){
        ${TLDR} \$@ | bat
    }
fi

## exa
if type "htop" > /dev/null 2>&1
then
    alias top='htop'
fi


## aliases
alias fdstr='fd | xargs rg'
alias history='history | peco'

## function
function fdvim(){
  fd $1 | xargs -t rg --files  | peco --select-1  | xargs -t nvim
}

function rgvim(){
  rg -A 5 -B 5 $1 ./*  | peco --select-1  | cut -d':' -f1 | xargs -t nvim
}

EOF
