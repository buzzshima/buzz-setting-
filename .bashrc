#========history search=======
# 重複履歴を無視
export HISTCONTROL=ignoreboth:erasedups
#historyの保存の数を10000に
export HISTSIZE=10000

# settings for peco
_replace_by_history() {
    declare l=$(HISTTIMEFORMAT= history | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | percol --query "$READLINE_LINE")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}
}
bind -x '"\C-r": _replace_by_history'

#git 
source ~/.git-completion.bash



#alias  zone
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls --color=auto'

  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'


alias rm='rm -rfi'
alias cdd='cd $(ls|percol)&&ls '
alias cll='clang++'
alias roscsv='rosrun rosbag_to_csv rosbag_to_csv.py'
#alias  zone

source /opt/ros/indigo/setup.bash
source ~/catkin_ws/devel/setup.bash

export PATH=/home/buzzshiima/anaconda3/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#ターミナル表示
 export PS1='\n\u at \h in \w\n$ '


