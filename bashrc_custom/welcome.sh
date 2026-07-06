# ---------------------------------------------------
# Author: @[YenChen12](https://github.com/YenChen12)
# Created: 2026/06/30
# ---------------------------------------------------

#! /bin/bash

# Color
RED='\033[1;35m'
RESET='\033[0m'

# ASCII art
echo -e "${RED}"
cat << 'EOF'
 __        __   _                          
 \ \      / /__| | ___ ___  _ __ ___   ___ 
  \ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _ \
   \ V  V /  __/ | (_| (_) | | | | | |  __/
    \_/\_/ \___|_|\___\___/|_| |_| |_|\___|
                                           
EOF
echo -e "${RESET}"

# Loading
echo -e "[Task] Remember to drink 2000ml of water today." && sleep 0.5
echo -e "[Current Time]" $(date '+%Y/%m/%d %H:%M:%S') && sleep 0.5
