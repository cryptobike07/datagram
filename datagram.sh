#!/bin/bash

# Bold + bright cyan color
BOLD='\033[1m'
CYAN='\033[96m'
GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

echo ""
echo -e "${BOLD}${CYAN}███████╗ █████╗ ██╗███╗   ██╗████████╗    ██╗  ██╗██╗  ██╗███████╗███╗   ██╗"
echo "██╔════╝██╔══██╗██║████╗  ██║╚══██╔══╝    ██║ ██╔╝╚██╗██╔╝██╔════╝████╗  ██║"
echo "███████╗███████║██║██╔██╗ ██║   ██║       █████╔╝  ╚███╔╝ █████╗  ██╔██╗ ██║"
echo "╚════██║██╔══██║██║██║╚██╗██║   ██║       ██╔═██╗  ██╔██╗ ██╔══╝  ██║╚██╗██║"
echo "███████║██║  ██║██║██║ ╚████║   ██║       ██║  ██╗██╔╝ ██╗███████╗██║ ╚████║"
echo "╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝"
echo -e "                          SAINT KHEN || @admirkhen${RESET}"
echo ""
sleep 1

# Ask for API key
read -p "🔑 Enter your API key: " API_KEY

# Download binary if not found
if [ ! -f datagram ]; then
    echo -e "${CYAN}⬇️  Downloading Datagram CLI...${RESET}"
    wget https://github.com/Datagram-Group/datagram-cli-release/releases/latest/download/datagram-cli-x86_64-linux -O datagram
    chmod +x datagram
fi

# Run node
echo -e "${CYAN}🚀 Starting Datagram node...${RESET}"
sleep 1
./datagram run -- -key "$API_KEY" &

# Wait and check status
sleep 5
if pgrep -f "datagram run" > /dev/null; then
    echo -e "${GREEN}✅ Datagram node is running in background!${RESET}"
else
    echo -e "${RED}❌ Something went wrong. Check your API key or network.${RESET}"
fi
