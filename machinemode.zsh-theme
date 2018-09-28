# Totally ripped off Dallas theme

# Grab the current date (%W) and time (%t):
#JUNKFOOD_TIME_="%{$fg_bold[yellow]%}#%{$fg_bold[white]%}( %{$fg_bold[cyan]%}%W%{$reset_color%}@%{$fg_bold[white]%}%t )( %{$reset_color%}"
MACHINEMODE_TIME_="%{$fg_bold[white]%}%{$fg_bold[red]%} %{$fg_bold[red]%}%W%{$reset_color%}%{$fg_bold[red]%}%t%{$reset_color%} %{$reset_color%}"

# Grab the current username
MACHINEMODE_CURRENT_USER_="%{$fg_bold[green]%}* %n@%{$reset_color%}"

# Grab the current machine name
MACHINEMODE_MACHINE_="%{$fg_bold[green]%}%m *%{$fg[white]%}%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
MACHINEMODE_LOCA_="%{$fg_bold[cyan]%} %~ \$(git_prompt_info)%{$reset_color%}"

# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[yellow]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔✔✔ "

# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗✗✗ "

#Battery Charge Function
function battery_charge(){
    if [ -e /usr/bin/deb_batteryinfo.py ]
    then
        echo `python /usr/bin/deb_batteryinfo.py`
    else
        echo '';
    fi
}

# Put it all together!
#PROMPT="ǁ$MACHINEMODE_TIME_ǁ $MACHINEMODE_CURRENT_USER_$MACHINEMODE_MACHINE_ǁ $MACHINEMODE_LOCA_
#"

#Displays the current status of laptop battery charge
#RPROMPT='$(battery_charge)'

# More symbols to choose from:
# ☀ ✹ ♆ ♀ ♁ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♻ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ # ⬅ ⬆ ⬇
# ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟ ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ ▸ ▹ ⬪ ⬫ ⬢ ⬡ ⬟ ⬠ ᠅

PROMPT="$(battery_charge) $MACHINEMODE_CURRENT_USER_$MACHINEMODE_MACHINE_$MACHINEMODE_LOCA_"
RPROMPT='$MACHINEMODE_TIME_'
