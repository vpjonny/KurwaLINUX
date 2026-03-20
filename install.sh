#!/usr/bin/env bash
# ============================================================
# KURWA LINUX INSTALLER v1.0
# Arch/EndeavourOS rage customization layer
# Bóbr-powered. Zero responsibility. Maximum sarcasm.
# ============================================================

set -e

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_SUFFIX="bak-kurwa-$(date +%Y%m%d%H%M%S)"

banner() {
    echo -e "${RED}"
    cat << 'ASCIIEOF'
  ██╗  ██╗██╗   ██╗██████╗ ██╗    ██╗ █████╗     ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
  ██║ ██╔╝██║   ██║██╔══██╗██║    ██║██╔══██╗    ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
  █████╔╝ ██║   ██║██████╔╝██║ █╗ ██║███████║    ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝
  ██╔═██╗ ██║   ██║██╔══██╗██║███╗██║██╔══██║    ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗
  ██║  ██╗╚██████╔╝██║  ██║╚███╔███╔╝██║  ██║    ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
  ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝    ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
ASCIIEOF
    echo -e "${NC}"
    echo -e "${YELLOW}  🦫  INSTALLER v1.0 — Bóbr-Powered, Zero Responsibility  🦫${NC}"
    echo -e "${DIM}  \"It works on my machine\" — Castor fiber${NC}"
    echo ""
}

check_pacman() {
    if ! command -v pacman &>/dev/null; then
        echo -e "${RED}Kurwa — no pacman found.${NC}"
        echo -e "${DIM}This is Arch-only. Ubuntu is that way. → → →${NC}"
        exit 1
    fi
}

confirm() {
    echo -e "${YELLOW}⚠️  This will install Kurwa Linux on your system.${NC}"
    echo -e "${CYAN}   Your .bashrc will be backed up first (as .bashrc.${BACKUP_SUFFIX}).${NC}"
    echo -e "${DIM}   Probably safe. The bóbr has reviewed the script. He has notes.${NC}"
    echo ""
    read -rp "Continue? [y/N] " response
    case "$response" in
        [yY]) echo "" ;;
        *)
            echo -e "${RED}Coward. The bóbr is unsurprised. Goodbye.${NC}"
            exit 0
            ;;
    esac
}

step() { echo -e "${CYAN}[${1}/${STEPS}] ${2}${NC}"; }
ok()   { echo -e "${GREEN}  ✓ ${1}${NC}"; }
warn() { echo -e "${YELLOW}  ⚠ ${1}${NC}"; }
info() { echo -e "${DIM}    ${1}${NC}"; }

STEPS=6

backup_bashrc() {
    step 1 "Backing up .bashrc..."
    cp ~/.bashrc ~/.bashrc."${BACKUP_SUFFIX}"
    ok "Backup saved as ~/.bashrc.${BACKUP_SUFFIX}"
    info "You know where it is. The bóbr also knows."
}

install_deps() {
    step 2 "Installing dependencies..."
    info "cowsay figlet lolcat neofetch — critical infrastructure, kurwa"
    sudo pacman -S --needed --noconfirm cowsay figlet lolcat neofetch 2>/dev/null \
        && ok "Dependencies installed. The bóbr approves of cowsay especially." \
        || warn "Not everything installed cleanly. Check it yourself. Classic."
}

install_aliases() {
    step 3 "Injecting rage aliases into ~/.bashrc..."

    # Nuke any previous kurwa block
    sed -i '/# >>> KURWA LINUX START >>>/,/# <<< KURWA LINUX END <<</d' ~/.bashrc

    cat >> ~/.bashrc << 'KURWAEOF'

# >>> KURWA LINUX START >>>
# Kurwa Linux — do not remove this block, kurwa
# The bóbr wrote this at 4am. It is perfect.

kurwa() {
    echo -e "\033[0;31m"
    echo "  ╔══════════════════════════════════╗"
    echo "  ║   KURWA MODE: ACTIVATED  🔥🦫  ║"
    echo "  ║   The bóbr has been summoned.   ║"
    echo "  ║   God has been notified. Kurwa. ║"
    echo "  ╚══════════════════════════════════╝"
    echo -e "\033[0m"
    cowsay -f tux "BOBR KURWA!" 2>/dev/null || echo "🦫 BOBR KURWA!"
    echo ""
    echo "Updating the system, kurwa..."
    sudo pacman -Syu --noconfirm
    echo ""
    echo -e "\033[0;32mSystem fresh as a beaver after a bath. Kurwa.\033[0m"
}

install() {
    if [ -z "$1" ]; then
        echo "Kurwa — install WHAT exactly? Give me a package name, not a blank stare."
        return 1
    fi
    sudo pacman -S "$@" \
        || echo -e "\033[0;31mKurwa — package '$*' not found. What are you even doing.\033[0m"
}

remove() {
    if [ -z "$1" ]; then
        echo "Remove what? The void? Give me a package name, kurwa."
        return 1
    fi
    sudo pacman -Rns "$@" \
        && echo "Gone. Good riddance. The bóbr feels nothing. 🦫" \
        || echo "Cannot remove. Probably a dependency. Think before you type. Kurwa."
}

update() { kurwa; }

# Convenience trap: yell on errors (uncomment if you enjoy chaos)
# trap 'echo -e "\033[0;31m[kurwa] error in line $LINENO — you did this.\033[0m"' ERR

# PATH for kurwa bin scripts
export PATH="$HOME/.local/bin:$PATH"
# <<< KURWA LINUX END <<<
KURWAEOF

    ok "Aliases injected. Your terminal now has opinions."
}

install_motd() {
    step 4 "Setting up login MOTD..."
    local motd_src="${REPO_DIR}/motd/kurwa.motd"
    if [[ -f "$motd_src" ]]; then
        grep -q "kurwa.motd" ~/.bash_profile 2>/dev/null \
            || echo "[ -f \"${motd_src}\" ] && bash \"${motd_src}\"" >> ~/.bash_profile
        ok "MOTD configured — the bóbr will greet you on every login"
    else
        warn "motd/kurwa.motd not found. The bóbr is disappointed but not surprised."
    fi
}

install_bin() {
    step 5 "Installing bin/ scripts to ~/.local/bin..."
    mkdir -p ~/.local/bin
    local installed=0
    for f in "${REPO_DIR}"/bin/*; do
        [[ -f "$f" ]] || continue
        chmod +x "$f"
        cp "$f" ~/.local/bin/
        installed=$((installed + 1))
    done
    if [[ $installed -gt 0 ]]; then
        ok "Installed $installed scripts — kurwa, beaver, wtf, kurwa-status, kurwa-help, bobr"
    else
        warn "No bin/ scripts found. Did you git clone properly? The bóbr asks."
    fi
}

install_neofetch() {
    step 6 "Configuring neofetch (bóbr edition)..."
    local conf_dir="$HOME/.config/neofetch"
    local conf_src="${REPO_DIR}/themes/neofetch-bobr.conf"
    mkdir -p "$conf_dir"
    if [[ -f "$conf_src" ]]; then
        cp "$conf_src" "$conf_dir/config.conf"
        ok "Neofetch configured — bóbr-themed, dark, opinionated"
    else
        warn "neofetch-bobr.conf not found. Skipping. The bóbr shrugs."
    fi
}

finish() {
    echo ""
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${BOLD}${GREEN}  ✅ KURWA LINUX INSTALLED SUCCESSFULLY${NC}"
    echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
    echo -e "  1. ${CYAN}source ~/.bashrc${NC}"
    echo -e "  2. ${CYAN}kurwa${NC}"
    echo ""
    echo -e "  ${DIM}The bóbr is already watching. He was watching before you ran this.${NC}"
    echo -e "  ${YELLOW}🦫  Welcome to Kurwa Linux. You cannot leave.${NC}"
    echo ""
}

# ── MAIN ──────────────────────────────────────────────────
banner
check_pacman
confirm
backup_bashrc
install_deps
install_aliases
install_motd
install_bin
install_neofetch
finish
