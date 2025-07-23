#!/bin/bash

# Clear the screen for better visibility
clear

# ANSI color codes for pretty output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${BLUE}🖥️  Let's Explore the uname Command! 🚀${NC}"
echo "========================================"

# Function to display command and its output
show_command() {
    echo -e "\n${YELLOW}📌 Running:${NC} $1"
    echo -e "${GREEN}🔍 Output:${NC}"
    eval $1
    echo "----------------------------------------"
}

echo -e "\n${PURPLE}1️⃣  Basic System Name${NC}"
show_command "uname"

echo -e "\n${PURPLE}2️⃣  Full System Information${NC}"
show_command "uname -a"

echo -e "\n${PURPLE}3️⃣  Network Node Name (Hostname)${NC}"
show_command "uname -n"

echo -e "\n${PURPLE}4️⃣  Kernel Release${NC}"
show_command "uname -r"

echo -e "\n${PURPLE}5️⃣  Machine Hardware Name${NC}"
show_command "uname -m"

echo -e "\n${PURPLE}6️⃣  Processor Type${NC}"
show_command "uname -p"

echo -e "\n${PURPLE}7️⃣  Operating System${NC}"
show_command "uname -o"

echo -e "\n${PURPLE}8️⃣  Kernel Version${NC}"
show_command "uname -v"

# Save system information to a file
echo -e "\n${CYAN}💾 Saving system information to 'system_info.txt'...${NC}"
uname -a > system_info.txt
echo -e "${GREEN}✅ System information saved!${NC}"

echo -e "\n${BLUE}🎉 That's the power of uname! Now you know your system better!${NC}"
echo -e "${YELLOW}📚 Try these commands yourself to explore more!${NC}"

# Display some useful tips
echo -e "\n${PURPLE}💡 Pro Tips:${NC}"
echo -e "1. Use ${GREEN}uname -a${NC} for complete system info"
echo -e "2. Use ${GREEN}uname -m${NC} to check system architecture"
echo -e "3. Use ${GREEN}uname -r${NC} to check kernel version"
echo -e "4. Combine with other commands like: ${GREEN}echo \"OS: $(uname -s)\"${NC}"

echo -e "\n${BLUE}🔍 Happy System Exploring! 🚀${NC}" 