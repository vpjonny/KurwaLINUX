#!/usr/bin/env bash
# Kurwa Linux uninstaller
# For cowards. The bóbr knows.

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
DIM='\033[2m'
NC='\033[0m'

echo -e "${RED}"
echo "  ╔══════════════════════════════════════╗"
echo "  ║   KURWA LINUX UNINSTALLER            ║"
echo "  ║   For cowards. The bóbr knows.       ║"
echo "  ╚══════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${YELLOW}Are you sure you want to uninstall Kurwa Linux?${NC}"
echo -e "${DIM}The bóbr will be notified. He is already disappointed.${NC}"
echo ""
read -rp "Really? [y/N] " r

[[ "$r" =~ ^[yY]$ ]] || {
    echo ""
    echo -e "${GREEN}Good. You stay. Smart decision. The bóbr nods.${NC}"
    exit 0
}

echo ""
echo "Removing aliases from ~/.bashrc..."
sed -i '/# >>> KURWA LINUX START >>>/,/# <<< KURWA LINUX END <<</d' ~/.bashrc

echo "Removing MOTD from ~/.bash_profile..."
sed -i '/kurwa\.motd/d' ~/.bash_profile 2>/dev/null

echo "Removing bin scripts..."
for cmd in kurwa beaver wtf kurwa-status kurwa-help bobr; do
    rm -f ~/.local/bin/"$cmd" && echo "  removed: $cmd"
done

echo ""
echo -e "${YELLOW}Uninstalled. The bóbr has been informed.${NC}"
echo -e "${DIM}Your .bashrc backup is still there. You're welcome.${NC}"
echo -e "${DIM}Go back to Ubuntu where you belong. The bóbr will not miss you.${NC}"
echo -e "${DIM}(He will miss you a little. He will not say this again.)${NC}"
echo ""
