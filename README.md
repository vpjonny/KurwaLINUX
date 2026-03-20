# 🦫 Kurwa Linux

> *"Because that's how it is, kurwa."*

[![License: WTFPL](https://img.shields.io/badge/License-WTFPL-brightred.svg)](http://www.wtfpl.net/)
[![Made with: Rage](https://img.shields.io/badge/Made%20with-Pure%20rage-red)](https://github.com)
[![Bóbr: Kurwa](https://img.shields.io/badge/B%C3%B3br-KURWA%20%F0%9F%A6%AB-orange)](https://github.com)
[![Pacman: --noconfirm](https://img.shields.io/badge/pacman--noconfirm-always-blue)](https://archlinux.org)
[![Kurwa count: many](https://img.shields.io/badge/kurwa%20count-many-red)](https://github.com)

```
██╗  ██╗██╗   ██╗██████╗ ██╗    ██╗ █████╗     ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
██║ ██╔╝██║   ██║██╔══██╗██║    ██║██╔══██╗    ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
█████╔╝ ██║   ██║██████╔╝██║ █╗ ██║███████║    ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝
██╔═██╗ ██║   ██║██╔══██╗██║███╗██║██╔══██║    ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗
██║  ██╗╚██████╔╝██║  ██║╚███╔███╔╝██║  ██║    ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝    ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
```

**Kurwa Linux** is not a distro. It's a state of mind. A customization layer for Arch/EndeavourOS
users who are tired of their system being polite about things.

One script. Zero mercy. One beaver. Many kurwas.

---

## ⚡ Quick Install

```bash
git clone https://github.com/YOURUSERNAME/kurwa-linux.git
cd kurwa-linux
bash install.sh
source ~/.bashrc
kurwa
```

Boom. Your system now hates you back. Congratulations. The bóbr is watching.

---

## 📦 What Gets Installed

| Component | Description |
|-----------|-------------|
| `kurwa` | Nuclear update + rage output + bóbr summoning |
| `beaver` | Summon the bóbr (artistic, therapeutic, spiritual) |
| `wtf` | Forensic analysis of your recent mistakes |
| `kurwa-status` | System health check — spoiler: it's fine. probably. |
| `kurwa-help` | All commands, explained with judgment |
| `bobr` | Direct audience with the bóbr. he has thoughts. |
| MOTD | Time-aware greeting on every login (the bóbr knows what hour it is) |
| Rage aliases | `install`, `remove`, `update` — all with commentary |

---

## 🔥 Commands

```bash
kurwa              # Full system update + rage + bóbr summoning
beaver             # The bóbr, in ASCII, with facts about your vim usage
wtf                # Last 20 errors, annotated sarcastically
kurwa-status       # System stats with unsolicited opinions
kurwa-help         # This, but angrier and more judgmental
bobr               # Consult the bóbr. he will be honest with you.
install <pkg>      # pacman -S with commentary
remove <pkg>       # pacman -Rns with satisfaction
update             # alias for kurwa. the whole command is just kurwa. we simplified.
```

---

## 🗂️ Repo Structure

```
kurwa-linux/
├── README.md                    # You are here, kurwa
├── install.sh                   # One-shot installer (backs up .bashrc first, don't worry)
├── uninstall.sh                 # For cowards
├── aliases.sh                   # Sourced by install.sh — all the rage
├── bin/
│   ├── kurwa                    # The main event
│   ├── beaver                   # Bóbr summoner
│   ├── wtf                      # Journal rage viewer
│   ├── kurwa-status             # System health, bóbr edition
│   ├── kurwa-help               # Help, with opinions
│   └── bobr                     # Direct bóbr consultation
├── motd/
│   └── kurwa.motd               # Time-aware login message + rotating wisdom
├── themes/
│   └── neofetch-bobr.conf       # Neofetch config, kurwa edition
├── sounds/
│   └── README.md                # Instructions (bring your own bóbr audio)
├── docs/
│   └── PHILOSOPHY.md            # The deeper lore, kurwa
└── .github/
    └── workflows/
        └── ci.yml               # CI that checks kurwa count in README (min 5, non-negotiable)
```

---

## 🛠️ Requirements

- Arch Linux or EndeavourOS *(others: go back to Ubuntu)*
- `pacman`
- `bash`
- The will to suffer

**Auto-installed:** `cowsay`, `figlet`, `lolcat`, `neofetch`

---

## 🚫 What This Is NOT

- A real distro *(pacman would segfault from the energy)*
- Safe for work terminals
- Responsible in any way
- Compatible with `apt` *(kurwa, get out)*
- A substitute for reading the Arch wiki *(nothing is)*

---

## 🦫 FAQ

**Q: Will this break my system?**
A: It backs up `.bashrc` first. Probably fine. Kurwa.

**Q: Can I use this on Ubuntu?**
A: No. Go away. Ubuntu has its own problems and they are not our problems.

**Q: What does "kurwa" mean?**
A: It's a Polish word. It means everything. You'll understand after your third kernel panic.

**Q: Is the bóbr real?**
A: The bóbr is always real. The bóbr has a home directory. The bóbr has been here the whole time.

**Q: Why is temporary_fix.sh still running?**
A: It's fine. Everything is fine.

**Q: How do I exit vim?**
A: We will not help you. Earn it.

**Q: How do I uninstall?**
A: `bash uninstall.sh` — but the bóbr will know.

---

## 🤝 Contributing

PRs welcome. Hard requirements:
1. Must contain at least one "kurwa" (CI enforces this — minimum 5 in README)
2. Must not break pacman (this is sacred)
3. Must be funnier than what's already here (high bar, kurwa)
4. Commit messages must be real sentences (not "fix", "fix2", "FINAL_FINAL_v3")

---

## 📜 License

[WTFPL](http://www.wtfpl.net/) — Do What The Fuck You Want To Public License.
Specifically: whatever, kurwa. Don't blame us if it breaks. It won't. Probably.

---

<p align="center">
  <b>🦫 BÓBR KURWA 🦫</b><br>
  <i>"You are doing fine. Not great. Fine." — The Bóbr</i>
</p>
