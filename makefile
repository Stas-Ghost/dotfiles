all: arch emacs zgen

zgen:
	zsh -i -c "zgen selfupdate"
	zsh -i -c "zgen update"

arch:
	yaourt -Syu --noconfirm

emacs:
	cd ~/.emacs.d && git stash && git pull && git stash pop
	/usr/bin/emacs -nw --eval "(funcall (lambda () (configuration-layer/update-packages t) (kill-emacs)))"
	systemctl restart --user emacs.service
