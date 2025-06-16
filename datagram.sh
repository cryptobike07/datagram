#!/bin/bash

# === Colors and Styling ===
BOLD='\033[1m'
CYAN='\033[96m'
GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

# === Banner ===
print_banner() {
    echo ""
    echo -e "${BOLD}${CYAN}███████╗ █████╗ ██╗███╗   ██╗████████╗    ██╗  ██╗██╗  ██╗███████╗███╗   ██╗"
    echo "██╔════╝██╔══██╗██║████╗  ██║╚══██╔══╝    ██║ ██╔╝╚██╗██╔╝██╔════╝████╗  ██║"
    echo "███████╗███████║██║██╔██╗ ██║   ██║       █████╔╝  ╚███╔╝ █████╗  ██╔██╗ ██║"
    echo "╚════██║██╔══██║██║██║╚██╗██║   ██║       ██╔═██╗  ██╔██╗ ██╔══╝  ██║╚██╗██║"
    echo "███████║██║  ██║██║██║ ╚████║   ██║       ██║  ██╗██╔╝ ██╗███████╗██║ ╚████║"
    echo "╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝"
    echo -e "                          SAINT KHEN || @admirkhen${RESET}"
    echo ""
}

# === Download Binary If Missing ===
download_binary() {
    if [ ! -f datagram ]; then
        echo -e "${CYAN}⬇️  Downloading Datagram CLI...${RESET}"
        wget https://github.com/Datagram-Group/datagram-cli-release/releases/latest/download/datagram-cli-x86_64-linux -O datagram
        chmod +x datagram
    fi
}

# === Start Node ===
start_node() {
    print_banner
    download_binary
    read -p "🔑 Enter your API key: " API_KEY
    echo -e "${CYAN}🚀 Starting Datagram node...${RESET}"
    ./datagram run -- -key "$API_KEY" > datagram.log 2>&1 &
    sleep 3
    status_node
}

# === Stop Node ===
stop_node() {
    if pgrep -f "datagram run" > /dev/null; then
        pkill -f "datagram run"
        echo -e "${RED}🛑 Datagram node stopped.${RESET}"
    else
        echo -e "${RED}⚠️  Datagram node is not running.${RESET}"
    fi
}

# === Check Status ===
status_node() {
    if pgrep -f "datagram run" > /dev/null; then
        echo -e "${GREEN}✅ Datagram node is running.${RESET}"
    else
        echo -e "${RED}❌ Datagram node is NOT running.${RESET}"
    fi
}

# === Restart Node ===
restart_node() {
    stop_node
    sleep 2
    start_node
}

# === Help ===
show_help() {
    echo ""
    echo -e "${BOLD}Usage:${RESET} ./datagram.sh {start|stop|status|restart}"
    echo ""
    echo "start     Start the datagram node (with API key prompt)"
    echo "stop      Stop the running node"
    echo "status    Check if node is running"
    echo "restart   Restart the node"
    echo ""
}

# === Main ===
case "$1" in
    start) start_node ;;
    stop) stop_node ;;
    status) status_node ;;
    restart) restart_node ;;
    *) show_help ;;
esac
