#hirose's zshrc file
#LaastModified:2007/03/11
#host:debian

# ZDOTDIR $B$O(B zsh $B$N8D?MMQ@_Dj%U%!%$%k$rC5$9%G%#%l%/%H%j$r;XDj$9$k(B

if [ -z $ZDOTDIR ]; then
	export ZDOTDIR=$HOME
fi
# $B@Z$jJ,$1$?@_Dj%U%!%$%k$rFI$_9~$`%G%#%l%/%H%j$r;XDj$9$k(B

export ZUSERDIR=$ZDOTDIR/.zsh

### System specific environment

# $B4D6-JQ?t!J(BPATH $B$J$I!K$N(B OS $BJL@_Dj%U%!%$%k$rFI$_9~$`(B

if [ -f $ZUSERDIR/zshrc.$SYSTEM ]; then
	source $ZUSERDIR/zshrc.$SYSTEM
fi


export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
# Add android SDK
export PATH=/Users/hirose30/develop/Android/android-sdk-macosx/tools/:$PATH

export MANPATH=/opt/local/man:$MANPATH

# man path
#export MANPATH="/usr/share/man:/usr/X11R6/man:/usr/local/man:/var/qmail/man:$HOME/man:."

#COLOR
local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'
local DEFAULT=$'%{\e[1;m%}'
# $B%9!<%Q!<%f!<%6$N%W%m%s%W%H$O@V$K$9$k(B
if [ $UID = 0 ]; then
	local PCR=$'%{\e[1;31m%}'
else
	local PCR=$'%{\e[1;34m%}'
fi
	
# set aliases 
alias ls='ls -F'
alias ll='ls -la'
alias eng='LANG=C LANGUAGE=C LC_ALL=C'
alias -g L="| less"
alias -g G="| grep"

alias screen="screen -D -RR"

# fool ploof
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'


#PROMPT
PROMPT=$PCR'[${USER}@${HOST}] %(!.#.$) '$DEFAULT
RPROMPT=$GREEN'[%~]'$DEFAULT
setopt PROMPT_SUBST


# history

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt share_history
function history-all { history -E 1 }

autoload -U compinit
compinit



# $BJ#?t$N(B zsh $B$rF1;~$K;H$&;~$J$I(B history $B%U%!%$%k$K>e=q$-$;$:DI2C$9$k(B
setopt append_history

# $B;XDj$7$?%3%^%s%IL>$,$J$/!"%G%#%l%/%H%jL>$H0lCW$7$?>l9g(B cd $B$9$k(B
setopt auto_cd

# $BJd408uJd$,J#?t$"$k;~$K!"0lMwI=<($9$k(B
setopt auto_list

# $BJd40%-!<!J(BTab, Ctrl+I) $B$rO"BG$9$k$@$1$G=g$KJd408uJd$r<+F0$GJd40$9$k(B
setopt auto_menu

# $B%+%C%3$NBP1~$J$I$r<+F0E*$KJd40$9$k(B
setopt auto_param_keys

# $B%G%#%l%/%H%jL>$NJd40$GKvHx$N(B / $B$r<+F0E*$KIU2C$7!"<!$NJd40$KHw$($k(B
setopt auto_param_slash

# $B:G8e$,%G%#%l%/%H%jL>$G=*$o$C$F$$$k>l9gKvHx$N(B / $B$r<+F0E*$K<h$j=|$/(B
#setopt auto_remove_slash

# $B%5%9%Z%s%ICf$N%W%m%;%9$HF1$8%3%^%s%IL>$r<B9T$7$?>l9g$O%j%8%e!<%`$9$k(B
setopt auto_resume

# $B%S!<%W2;$rLD$i$5$J$$$h$&$K$9$k(B
setopt NO_beep

# {a-c} $B$r(B a b c $B$KE83+$9$k5!G=$r;H$($k$h$&$K$9$k(B
setopt brace_ccl

# $BFbIt%3%^%s%I$N(B echo $B$r(B BSD $B8_49$K$9$k(B
#setopt bsd_echo

# $B%7%s%\%j%C%/%j%s%/$O<BBN$rDI$&$h$&$K$J$k(B
#setopt chase_links

# $B4{B8$N%U%!%$%k$r>e=q$-$7$J$$$h$&$K$9$k(B
#setopt clobber

# $B%3%^%s%I$N%9%Z%k%A%'%C%/$r$9$k(B
setopt correct

# $B%3%^%s%I%i%$%sA4$F$N%9%Z%k%A%'%C%/$r$9$k(B
#setopt correct_all

# =command $B$r(B command $B$N%Q%9L>$KE83+$9$k(B
setopt equals

# $B%U%!%$%kL>$G(B #, ~, ^ $B$N(B 3 $BJ8;z$r@55,I=8=$H$7$F07$&(B
setopt extended_glob

# zsh $B$N3+;O!&=*N;;~9o$r%R%9%H%j%U%!%$%k$K=q$-9~$`(B
#setopt extended_history

# Ctrl+S/Ctrl+Q $B$K$h$k%U%m!<@)8f$r;H$o$J$$$h$&$K$9$k(B
setopt NO_flow_control

# $B3F%3%^%s%I$,<B9T$5$l$k$H$-$K%Q%9$r%O%C%7%e$KF~$l$k(B
#setopt hash_cmds

# $BD>A0$HF1$8%3%^%s%I%i%$%s$O%R%9%H%j$KDI2C$7$J$$(B
setopt hist_ignore_dups

# $B%3%^%s%I%i%$%s$N@hF,$,%9%Z!<%9$G;O$^$k>l9g%R%9%H%j$KDI2C$7$J$$(B
setopt hist_ignore_space

# $B%R%9%H%j$r8F$S=P$7$F$+$i<B9T$9$k4V$K0lC6JT=8$G$-$k>uBV$K$J$k(B
setopt hist_verify

# $B%7%'%k$,=*N;$7$F$bN"%8%g%V$K(B HUP $B%7%0%J%k$rAw$i$J$$$h$&$K$9$k(B
setopt NO_hup

# Ctrl+D $B$G$O=*N;$7$J$$$h$&$K$J$k!J(Bexit, logout $B$J$I$r;H$&!K(B
setopt ignore_eof

# $B%3%^%s%I%i%$%s$G$b(B # $B0J9_$r%3%a%s%H$H8+$J$9(B
setopt interactive_comments

# auto_list $B$NJd408uJd0lMw$G!"(Bls -F $B$N$h$&$K%U%!%$%k$N<oJL$r%^!<%/I=<((B
setopt list_types

# $BFbIt%3%^%s%I(B jobs $B$N=PNO$r%G%U%)%k%H$G(B jobs -l $B$K$9$k(B
setopt long_list_jobs

# $B%3%^%s%I%i%$%s$N0z?t$G(B --prefix=/usr $B$J$I$N(B = $B0J9_$G$bJd40$G$-$k(B
setopt magic_equal_subst

# $B%a!<%k%9%W!<%k(B $MAIL $B$,FI$^$l$F$$$?$i%o!<%K%s%0$rI=<($9$k(B
#setopt mail_warning

# $B%U%!%$%kL>$NE83+$G%G%#%l%/%H%j$K%^%C%A$7$?>l9gKvHx$K(B / $B$rIU2C$9$k(B
setopt mark_dirs

# $BJd408uJd$,J#?t$"$k;~!"0lMwI=<((B (auto_list) $B$;$:!"$9$0$K:G=i$N8uJd$rJd40$9$k(B
#setopt menu_complete

# $BJ#?t$N%j%@%$%l%/%H$d%Q%$%W$J$I!"I,MW$K1~$8$F(B tee $B$d(B cat $B$N5!G=$,;H$o$l$k(B
setopt multios

# $B%U%!%$%kL>$NE83+$G!"<-=q=g$G$O$J$/?tCME*$K%=!<%H$5$l$k$h$&$K$J$k(B
setopt numeric_glob_sort

# $B%3%^%s%IL>$K(B / $B$,4^$^$l$F$$$k$H$-(B PATH $BCf$N%5%V%G%#%l%/%H%j$rC5$9(B
#setopt path_dirs

# 8 $B%S%C%HL\$rDL$9$h$&$K$J$j!"F|K\8l$N%U%!%$%kL>$J$I$r8+$l$k$h$&$K$J$k(B
setopt print_eightbit

# $BLa$jCM$,(B 0 $B0J30$N>l9g=*N;%3!<%I$rI=<($9$k(B
#setopt print_exit_value

# $B%G%#%l%/%H%j%9%?%C%/$KF1$8%G%#%l%/%H%j$rDI2C$7$J$$$h$&$K$J$k(B
#setopt pushd_ignore_dups

# pushd $B$r0z?t$J$7$G<B9T$7$?>l9g(B pushd $HOME $B$H8+$J$5$l$k(B
#setopt pushd_to_home

# rm * $B$J$I$N:]!"K\Ev$KA4$F$N%U%!%$%k$r>C$7$FNI$$$+$N3NG'$7$J$$$h$&$K$J$k(B
#setopt rm_star_silent

# rm_star_silent $B$N5U$G!"(B10 $BIC4VH?1~$7$J$/$J$j!"F,$rNd$^$9;~4V$,M?$($i$l$k(B
#setopt rm_star_wait

# for, repeat, select, if, function $B$J$I$G4JN,J8K!$,;H$($k$h$&$K$J$k(B
setopt short_loops

# $B%G%U%)%k%H$NJ#?t9T%3%^%s%I%i%$%sJT=8$G$O$J$/!"#19TJT=8%b!<%I$K$J$k(B
#setopt single_line_zle

# $B%3%^%s%I%i%$%s$,$I$N$h$&$KE83+$5$l<B9T$5$l$?$+$rI=<($9$k$h$&$K$J$k(B
#setopt xtrace

# $B?'$r;H$&(B
setopt prompt_subst

# $B%7%'%k$N%W%m%;%9$4$H$KMzNr$r6&M-(B
setopt share_history

# history (fc -l) $B%3%^%s%I$r%R%9%H%j%j%9%H$+$i<h$j=|$/!#(B
setopt hist_no_store

# $BJ8;zNsKvHx$K2~9T%3!<%I$,L5$$>l9g$G$bI=<($9$k(B
unsetopt promptcr

#$B%3%T%Z$N;~(Brprompt$B$rHsI=<($9$k(B
setopt transient_rprompt

# cd -[tab] $B$G(Bpushd
setopt autopushd
# color-ls $B$N?'$r@_Dj$9$k(B

LS_COLORS="fi=37:di=36:ex=32:ln=34:bd=33:cd=33:pi=35:so=35"
LS_COLORS="$LS_COLORS:*.gz=31:*.Z=31:*.lzh=31:*.zip=31:*.bz2=31"
LS_COLORS="$LS_COLORS:*.tar=31:*.tgz=31"
LS_COLORS="$LS_COLORS:*.gif=33:*.jpg=33:*.jpeg=33:*.tif=33:*.ps=33"
LS_COLORS="$LS_COLORS:*.xpm=33:*.xbm=33:*.xwd=33:*.xcf=33"
LS_COLORS="$LS_COLORS:*.avi=33:*.mov=33:*.mpeg=33:*.mpg=33"
LS_COLORS="$LS_COLORS:*.mid=33:*.MID=33:*.rcp=33:*.RCP=33:*.mp3=33"
LS_COLORS="$LS_COLORS:*.mod=33:*.MOD=33:*.au=33:*.aiff=33:*.wav=33"
LS_COLORS="$LS_COLORS:*.htm=35:*.html=35:*.java=35:*.class=32"
LS_COLORS="$LS_COLORS:*.c=35:*.h=35:*.C=35:*.c++=35"
LS_COLORS="$LS_COLORS:*.tex=35:*~=0"

# $B:G8e$K(B export $B$7$FM-8z$K$9$k(B

export LS_COLORS


eval "$(rbenv init -)"
