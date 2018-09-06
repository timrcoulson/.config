local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

H=$(date +%H)
EMOJI=
if (( 8 <= 10#$H && 10#$H < 13 )); then 
    EMOJI=☕
elif (( 13 <= 10#$H && 10#$H < 14 )); then 
    EMOJI=🍽
elif (( 14 <= 10#$H && 10#$H < 18 )); then 
    EMOJI=☕
elif (( 18 <= 10#$H && 10#$H < 23 )); then
    EMOJI=🍺
else
    EMOJI=💤
fi

PROMPT='${ret_status} ${EMOJI} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
