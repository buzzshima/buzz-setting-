# Created by newuser for 5.0.2
#allaszone 
alias open='xdg-open'
alias cdd='cd $(ls | percol)'
alias opp='xdg-open $(ls | percol)'


#大文字、小文字を区別せず補完する
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# historyの共有
setopt share_history
# ディレクトリ移動時にcdを打たなくても，ディレクトリと解釈できる文字列を打てばcdしてくれる
setopt AUTO_CD
cdpath=(.. ~ ~/src)
cd() { builtin cd "$@" && ls -AGF; }

# cd でTabを押すとdir list を表示
setopt auto_pushd

# 補完候補が複数ある時に、一覧表示する
setopt auto_list


# 補完キー（Tab,  Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu

### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする


setopt list_packed             # 補完候補をできるだけ詰めて表示する
setopt list_types              # 補完候補にファイルの種類も表示する
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順する("\e[Z"でも動作する)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

# 入力途中の履歴補完
#bindkey "^P" history-beginning-search-backward-end
#bindkey "^N" history-beginning-search-forward-end

## 補完機能の強化
autoload -U compinit
compinit

## ヒストリを共有
setopt share_history
#予測変換
#autoload predict-on
#predict-on


#補完色付け
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
export EDITOR=vim        # エディタをvimに設定
export LANG=ja_JP.UTF-8  # 文字コードをUTF-8に設定
export KCODE=u           # KCODEにUTF-8を設定

#PROMPT

