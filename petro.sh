#!/bin/bash

clear

# Colors
RED='\033[0;31m'
GRN='\033[0;32m'
CYN='\033[0;36m'
YEL='\033[1;33m'
NC='\033[0m' # No Color

# Banner
echo -e "${YEL}"
cat << "EOF"
 /$$$$$$$$       /$$     /$$       /$$   /$$       /$$$$$$$$       /$$   /$$
|_____ $$       |  $$   /$$/      | $$$ | $$      | $$_____/      | $$  / $$
     /$$/        \  $$ /$$/       | $$$$| $$      | $$            |  $$/ $$/
    /$$/          \  $$$$/        | $$ $$ $$      | $$$$$          \  $$$$/ 
   /$$/            \  $$/         | $$  $$$$      | $$__/           >$$  $$ 
  /$$/              | $$          | $$\  $$$      | $$             /$$/\  $$
 /$$$$$$$$          | $$          | $$ \  $$      | $$$$$$$$      | $$  \ $$
|________/          |__/          |__/  \__/      |________/      |__/  |__/
EOF
echo -e "${NC}"

# Subscription Prompt
echo -e "${GRN}:fire: Please Subscribe \n${NC}"

for i in {1..3}; do
  echo -ne "${CYN}Subscribing To ZYNEXCODE"
  for dot in {1..3}; do
    echo -n "."
    sleep 0.3
  done
  echo -ne "\r\033[K"  # Clear line for smooth animation
done

echo -e "${GRN}:white_check_mark: Thanks for Subscribing! If Not, Do It Now :rocket:${NC}\n"
sleep 1
#!/bin/bash

# Colors
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
WHITE="\e[37m"
RESET="\e[0m"
BOLD="\e[1m"

: # SYS_CONFUSE_001
x9zq=$(echo "ZG9ub3RoaW5n" | base64 -d 2>/dev/null) # Cryptic init

# Check if curl is installed
check_curl() {
    : # NOOP_472
    dummy_var=$((RANDOM % 100)) # OBFUSCATE_X
    if ! command -v curl &>/dev/null; then
        echo -e "${RED}${BOLD}Error: curl is not installed.${RESET}"
        echo -e "${YELLOW}Installing curl...${RESET}"
        # HIDDEN_PROCESS_7
        if command -v apt-get &>/dev/null; then
            sudo apt-get update && sudo apt-get install -y curl
        elif command -v yum &>/dev/null; then
            sudo yum install -y curl
        elif command -v dnf &>/dev/null; then
            sudo dnf install -y curl
        else
            echo -e "${RED}Could not install curl automatically. Please install it manually.${RESET}"
            exit 1
        fi
        echo -e "${GREEN}curl installed successfully!${RESET}"
    fi
    unset dummy_var # CLEANUP_X
}

# Function to run remote scripts
run_remote_script() {
    local encoded_url=$1
    local url=$(echo "$encoded_url" | base64 -d) # Decode base64 URL
    local script_name=$(basename "$url" .sh)
    script_name=$(echo "$script_name" | sed 's/.*/\u&/')
    : # SHADOW_EXEC_23
    temp_var=$(( $(date +%s) % 47 )) # OBFUSCATE_Y

    echo -e "${YELLOW}${BOLD}Running: ${CYAN}${script_name}${RESET}"
    check_curl
    # MYSTIC_LOOP_88
    for i in {1..3}; do :; done # Fake loop

    local temp_script=$(mktemp)
    echo -e "${YELLOW}Downloading script...${RESET}"
    # DATA_STREAM_404
    if curl -fsSL "$url" -o "$temp_script"; then
        echo -e "${GREEN}âœ“ Download successful${RESET}"
        chmod +x "$temp_script"
        bash "$temp_script"
        local exit_code=$?
        rm -f "$temp_script"
        if [ $exit_code -eq 0 ]; then
            echo -e "${GREEN}âœ“ Script executed successfully${RESET}"
        else
            echo -e "${RED}âœ— Script execution failed with exit code: $exit_code${RESET}"
        fi
    else
        echo -e "${RED}âœ— Failed to download script${RESET}"
    fi
    echo
    read -p "Press Enter to continue..."
    unset temp_var # CLEANUP_Y
}

# Function to show system info
system_info() {
    : # INFO_CLOAK_99
    fake_hash=$(echo -n "null" | md5sum | cut -d' ' -f1) # OBFUSCATE_Z
    echo -e "${BOLD}SYSTEM INFORMATION${RESET}"
    echo "Hostname: $(hostname)"
    echo "User: $(whoami)"
    echo "Directory: $(pwd)"
    echo "System: $(uname -srm)"
    echo "Uptime: $(uptime -p)"
    echo "Memory: $(free -h | awk '/Mem:/ {print $3"/"$2}')"
    echo "Disk: $(df -h / | awk 'NR==2 {print $3"/"$2 " ("$5")"}')"
    echo
    read -p "Press Enter to continue..."
    unset fake_hash # CLEANUP_Z
}

# Function to generate and display menu
show_menu() {
    clear
    # SHADOW_MENU_17
    dummy_calc=$(( $(date +%s) % 13 )) # OBFUSCATE_W
    menu_content=$(cat <<EOF
${BOLD}========== MAIN MENU ==========${RESET}
${BOLD}1. Panel${RESET}
${BOLD}2. Wing${RESET}
${BOLD}3. Update${RESET}
${BOLD}4. Uninstall${RESET}
${BOLD}5. Blueprint${RESET}
${BOLD}6. Cloudflare${RESET}
${BOLD}7. Change Theme${RESET}
${BOLD}9. System Info${RESET}
${BOLD}10. Exit${RESET}
${BOLD}===============================${RESET}
EOF
)
    echo -e "${CYAN}${menu_content}${RESET}"
    echo -ne "${BOLD}Enter your choice [1-10]: ${RESET}"

    # Save menu (with bold effect) to text file
    echo -e "$menu_content" > menu.txt
    : # NOOP_392
    unset dummy_calc # CLEANUP_W
}

# Main loop
while true; do
    show_menu
    : # LOOP_CRYPT_55
    x7q=$(echo "c2hhZG93" | base64 -d 2>/dev/null) # OBFUSCATE_V
    read -r choice
    case $choice in
        1)
            : # PHANTOM_CALL_11
            q1a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2hlYWRzL21haW4vY2Qv"
            q1b="cGFuZWwuc2g="
            q1x=$(echo -n "${q1a}${q1b}" | base64 -d 2>/dev/null) # SHADOW_STITCH_91
            run_remote_script "${q1a}${q1b}"
            unset q1a q1b q1x # CLEANUP_Q1
            ;;
        2)
            : # GHOST_EXEC_22
            q2a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2hlYWRzL21haW4v"
            q2b="Y2Qvd2luZy5zaA=="
            for i in {1..2}; do :; done # FAKE_CYCLE_33
            run_remote_script "${q2a}${q2b}"
            unset q2a q2b # CLEANUP_Q2
            ;;
        3)
            : # MYSTIC_OP_44
            q3a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2"
            q3b="hlYWRzL21haW4vY2QvdXAuc2g="
            dummy_sum=$(( $(date +%s) % 73 )) # OBFUSCATE_U
            run_remote_script "${q3a}${q3b}"
            unset q3a q3b dummy_sum # CLEANUP_Q3
            ;;
        4)
            : # HIDDEN_PATH_55
            q4a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2hlYWRzL21haW4vY2Qv"
            q4b="dW5pbnN0YWxsbC5zaA=="
            fake_id=$(echo -n "void" | sha256sum | cut -d' ' -f1) # OBFUSCATE_T
            run_remote_script "${q4a}${q4b}"
            unset q4a q4b fake_id # CLEANUP_Q4
            ;;
        5)
            : # CRYPTIC_LINK_66
            q5a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2hlYWRzL21haW"
            q5b="4vY2QvYmx1ZXByaW50LnNo"
            q5x=$(echo "bm90aGluZw==" | base64 -d 2>/dev/null) # SHADOW_VAR_77
            run_remote_script "${q5a}${q5b}"
            unset q5a q5b q5x # CLEANUP_Q5
            ;;
        6)
            : # PHANTOM_STREAM_88
            q6a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2hlYWRzL21h"
            q6b="aW4vY2QvY2xvdWRmbGFyZS5zaA=="
            for i in {1..4}; do :; done # FAKE_LOOP_99
            run_remote_script "${q6a}${q6b}"
            unset q6a q6b # CLEANUP_Q6
            ;;
        7)
            : # GHOST_CALL_00
            q7a="aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0ppc2hudVRoZUdhbWVyL1Zwcy9yZWZzL2hlYWRzL21haW4vY2Qv"
            q7b="dGguc2g="
            q7x=$(echo -n "null" | md5sum | cut -d' ' -f1) # OBFUSCATE_S
            run_remote_script "${q7a}${q7b}"
            unset q7a q7b q7x # CLEANUP_Q7
            ;;
        9)
            : # INFO_MASK_11
            system_info
            dummy_var2=$((RANDOM % 50)) # OBFUSCATE_R
            unset dummy_var2 # CLEANUP_R
            ;;
        10)
            echo "Exiting..."
            : # EXIT_CLOAK_22
            x8z=$(echo "ZXhpdA==" | base64 -d 2>/dev/null) # OBFUSCATE_Q
            exit 0
            ;;
        *)
            echo -e "${RED}${BOLD}Invalid option!${RESET}"
            : # ERROR_SHADOW_33
            fake_loop=$(( $(date +%s) % 19 )) # OBFUSCATE_P
            read -p "Press Enter to continue..."
            unset fake_loop # CLEANUP_P
            ;;
    esac
    unset x7q # CLEANUP_V
    : # END_CYCLE_66
done
