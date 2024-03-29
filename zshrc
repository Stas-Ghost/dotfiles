# zmodload zsh/zprof

# load zgen
source "/usr/share/zsh/share/zgen.zsh"

ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
#    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/aws
#    zgen oh-my-zsh plugins/colorize
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/docker-compose
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/ssh-agent
    zgen oh-my-zsh plugins/mosh
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/kubectl
    zgen oh-my-zsh plugins/kubectx
    zgen oh-my-zsh plugins/helm
    zgen oh-my-zsh plugins/lein
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/bgnotify
    zgen oh-my-zsh plugins/pass

    zgen load chrissicool/zsh-256color
    # zgen load zsh-users/zsh-syntax-highlighting
    zgen load djui/alias-tips
    zgen load zsh-users/zsh-autosuggestions
    # zgen load rimraf/k
    zgen load rupa/z
    zgen load Aloxaf/fzf-tab

    # completions
    zgen load zsh-users/zsh-completions src
    zgen load zchee/go-zsh-completions src

    # kubectx
    # zgen load ahmetb/kubectx completion/kubectx.zsh
    # zgen load ahmetb/kubectx completion/kubens.zsh

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
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }; alias transfer=transfer

#autoload -U zsh-mime-setup
#zsh-mime-setup

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Correct spelling for commands
setopt correct

# turn off the infernal correctall for filenames
unsetopt correctall

HIST_STAMPS="yyyy-mm-dd"

# set some history options
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify

setopt share_history
setopt pushd_ignore_dups

# Keep a ton of history.
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Speed up autocomplete, force prefix mapping
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)*==34=34}:${(s.:.)LS_COLORS}")';

# export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'emacsclient -c'; else echo 'emacsclient -t'; fi)"
export EDITOR='emacsclient -t --alternate-editor mg'
export VISUAL='emacsclient -t --alternate-editor mg'

alias e='emacsclient -t --alternate-editor mg'
alias emacs=e
alias vim=e
alias vi=e

alias ec='emacsclient -c'
alias eemacs=ec

alias open='xdg-open &>/dev/null'
alias o=open

alias suspend='systemctl suspend'

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/sbin

# Conditional PATH additions
for path_candidate in /opt/local/sbin \
       /opt/local/bin \
       ~/bin \
       ~/.go/bin
do
  if [ -d ${path_candidate} ]; then
        export PATH=${PATH}:${path_candidate}
  fi
done

export GOPATH=~/.go
export RUST_SRC_PATH=/home/ghost/code/rust/rust/src

stty icrnl

export ANSIBLE_INVENTORY=~/code/ansible/hosts
export ANSIBLE_HOST_CHECKING=False
export ANSIBLE_HOST_KEY_CHECKING=False

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

export SYSTEMD_LESS=FRXMK journalctl

# OPAM configuration
# . /home/ghost/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

unset zle_bracketed_paste

 # export NVM_DIR="$HOME/.nvm"
 # [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
 # source /usr/share/nvm/init-nvm.sh

source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"

#export FZF_DEFAULT_OPTS='--bind tab:down --cycle'
export FZF_DEFAULT_OPTS='--no-reverse'
export FZF_CTRL_R_OPTS='--sort' # --exact
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# zle     -N   fzf-history-widget
# bindkey '^[[C' fzf-history-widget
# bindkey '^P' up-line-or-history
# bindkey '^N' down-line-or-history

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export QT_SCALE_FACTOR=1.2
