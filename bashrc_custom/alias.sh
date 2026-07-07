# ---------------------------------------------------
# Author: @[YenChen12](https://github.com/YenChen12)
# Created: 2026/07/06
# ---------------------------------------------------

#! /bin/bash

# Git command
alias ggraph='git log --oneline --graph --all'
alias gl1f='git log -1 --format="%h,%cd,%an,%s" --date=local --abbrev=7'

# Process command
alias ps_cpu5='ps aux --sort=-%cpu | head -n 6' 
alias kuser='pkill -u'    # pkill -u $USER

# Find command
alias ffile='find . -name'    # find . -name <file>.sh || find . -name "*.sh" 
alias ffolder='find . -type d -name'    # find . -type d -name <folder> || find . -type d -name "*keyword*"
