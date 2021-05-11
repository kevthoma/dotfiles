# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{zsh_prompt,exports,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

autoload -U compinit
compinit

## keep background processes at full speed
setopt NOBGNICE
## restart running processes on exit
setopt HUP

## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
setopt NO_BEEP

## automatically decide when to page a list of completions
LISTMAX=0

## disable mail checking
MAILCHECK=0

## prompt expansion
setopt PROMPT_SUBST

autoload -U colors
colors

