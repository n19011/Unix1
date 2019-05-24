git diff remotes/origin/master
read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *)echo" abort."; exit ;; esac
