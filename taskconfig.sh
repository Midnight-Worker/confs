alias t='task'

taskpull() { cd ~/.task && git pull --rebase; }

taskpush() {
  cd  /mnt/c/Users/maikt/Desktop/taskwarrior/ || return 1
  if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "task update"
    git push
  else
    echo "No changes to push."
  fi
}
