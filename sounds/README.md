# 🔊 Sounds — Bring Your Own Bóbr

Due to copyright reasons, we cannot include the audio clip.
But you know what to do. Kurwa.

## Instructions

1. Find the "BÓBR KURWA!!!" clip (you know where to look — the internet is vast)
2. Save as `bobr.mp3` or `bobr.wav` in this folder
3. Add to `~/.bashrc`:

```bash
# Play bóbr on every error (requires mpv)
alias bobr-play='mpv --no-video ~/kurwa-linux/sounds/bobr.mp3 2>/dev/null || echo "🦫 BOBR KURWA!!!"'

# Play bóbr every 69 commands (because.)
_KURWA_CMD_COUNT=0
_kurwa_counter() {
    _KURWA_CMD_COUNT=$(( _KURWA_CMD_COUNT + 1 ))
    if (( _KURWA_CMD_COUNT % 69 == 0 )); then
        bobr-play &
    fi
}
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }_kurwa_counter"
```

## Alternative: Text-to-Speech

```bash
# No audio file? The bóbr understands. He has standards too.
alias bobr-speak='echo "Bobr kurwa" | espeak -v pl 2>/dev/null || echo "🦫 BOBR KURWA!!!"'
```

## Requirements

- `mpv` or `paplay` — for audio: `sudo pacman -S mpv`
- `espeak` — for TTS fallback: `sudo pacman -S espeak-ng`

---

*The bóbr does not need sound. The bóbr is a state of mind.*
*But the sound is good. The bóbr admits this.*
