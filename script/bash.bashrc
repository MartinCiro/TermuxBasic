# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

alias nb="nano $PREFIX/etc/bash.bashrc"
alias l="ls"
alias q="history -c && exit"
alias up="pkg update && pkg upgrade -y"
alias en="sh $HOME/.shortcuts/EnvA.Pc"
alias cx="sh $HOME/.shortcuts/conectar"
alias star="start-desktop"
alias bs="cp $PREFIX/etc/bash.bashrc $HOME/bash.bashrc"
alias ng="sh $HOME/.shortcuts/ng"
alias rdc='sh $HOME/.shortcuts/rdc'
alias nh='nano $HOME/.bash_history'
alias a='bash $HOME/.shortcuts/DescargarFbk'
alias cl='clear'
alias cop='cp $PREFIX/etc/bash.bashrc $HOME/temp'
alias lev='bash $HOME/.shortcuts/levantarsh'
alias clw='sh $HOME/.shortcuts/clearWhatsapp'
alias mpv='sh $HOME/.shortcuts/colorMpv && mpv'
alias termuxmpv='sh $HOME/.shortcuts/colorMpv && termuxmpv'
alias pof='history  -c && su -c "am broadcast android.intent.action.ACTION_SHUTDOWN && sleep 5 && reboot -p"'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
