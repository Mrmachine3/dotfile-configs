# Grab the current date (%W) and time (%t):
MACHINEMODE_TIME_="%{$fg_bold[white]%}%{$fg_bold[red]%} %{$fg_bold[red]%}%W %{$reset_color%}%{$fg_bold[red]%}%t%{$reset_color%} %{$reset_color%}"

# Grab current user's username
MACHINEMODE_CURRENT_USER_="%{$fg_bold[green]%}⚒ %n @%{$reset_color%} "

# Grab the current machine name
MACHINEMODE_MACHINE_="%{$fg_bold[green]%}%m ⚒%{$fg[white]%}%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~master
MACHINEMODE_LOCA_="%{$fg_bold[cyan]%} %~ \$(git_prompt_info)%{$reset_color%}"

# Grab battery functions to display in prompt
MACHINEMODE_BAT_="%{$fg_bold[yellow]%}$(battery_level_gauge) %{$fg_bold[yellow]%}[$(battery_pct_prompt)]"

# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[yellow]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Add 3 green checkmarks if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔✔✔ "

# Add 3 red ✗s if the branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗✗✗ "

# More symbols to choose from:
# ☀ ✹ ♆ ♀ ♁ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♻ ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐
# ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟ ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ ▸ ▹ ⬢ ⬡ ⬟ ⬠ 

# Displays current battery charge, custom user prompt, hostname and current working directory
PROMPT="MACHINEMODE_BAT_$MACHINEMODE_CURRENT_USER_$MACHINEMODE_MACHINE_$MACHINEMODE_LOCA_"

# Displays the current date and time
RPROMPT='$MACHINEMODE_TIME_'
