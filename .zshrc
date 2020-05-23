[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
DEFAULT_USER='dimstunt'
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'
alias hg='history | grep -v grep | grep'
alias airflow-init='source /Users/d.cherkashin/Documents/work/git/citymobil/dwh/venv/bin/activate; export AIRFLOW_HOME="${VIRTUAL_ENV}/airflow";/Users/d.cherkashin/Documents/work/git/citymobil/dwh/venv/airflow-init.sh'
alias pip3_upgrade='pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'