# load zgen
source "${HOME}/.zgen/zgen.zsh"

ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/debian
    zgen oh-my-zsh plugins/colorize
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/ssh-agent
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/command-not-found

    zgen load chrissicool/zsh-256color
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load djui/alias-tips
    zgen load zsh-users/zsh-autosuggestions
    zgen load rimraf/k
    zgen load rupa/z

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load Stas-Ghost/fishy-gentoo fishy-gentoo

    # save all to init script
    zgen save
fi

#zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
[ -f ~/.ssh/config ] && : ${(A)ssh_config_hosts:=${${${${(@M)${(f)"$(<~/.ssh/config)"}:#Host *}#Host }:#*\**}:#*\?*}}
[ -f ~/.ssh/known_hosts ] && : ${(A)ssh_known_hosts:=${${${(f)"$(<$HOME/.ssh/known_hosts)"}%%\ *}%%,*}}
zstyle ':completion:*:hosts' hosts $ssh_config_hosts $ssh_known_hosts

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias aib="sudo aptitude -t jessie-backports install"
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }; alias transfer=transfer

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

zstyle :omz:plugins:ssh-agent identities prod

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/sbin:$HOME/bin:$HOME/.composer/vendor/bin/

export GOPATH=/home/ghost/.go

autoload -U zsh-mime-setup
zsh-mime-setup

[ -e /home/ghost/notifyosd.zsh ] && . /home/ghost/notifyosd.zsh

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

