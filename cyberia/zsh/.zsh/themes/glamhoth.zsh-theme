ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[white]%}∆ "
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char
{
	if [ $UID -eq 0 ]; then echo φ; else echo λ; fi
}

PROMPT='
%{$fg[cyan]%}%~%{$reset_color%}
%{$fg[white]%}$(prompt_char)%{$reset_color%} '

RPROMPT='$(git_prompt_info)'
