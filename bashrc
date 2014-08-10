alias g=git
alias m="../python/bin/python manage.py"
alias pep8="pep8 --repeat --exclude=migrations,manage.py,python --filename=*.py . "

function get_git_branch {
    ref=$(git symbolic-ref HEAD 2>/dev/null) || return
    echo " (${ref#refs/heads/})"
}

PS1="\w\$(get_git_branch)$ "

if [ -e $HOME/.bashrc.local ]; then
    source $HOME/.bashrc.local
fi
