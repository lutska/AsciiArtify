# Demo Recording & Conversion Guide

This document explains how to record terminal sessions and screen demos, and how to convert them into GIFs or shareable formats for documentation and GitHub.

---

## Tools Overview

- **asciinema** – terminal session recorder that produces `.cast` files  
  https://asciinema.org/

- **agg (asciinema gif generator)** – converts `.cast` recordings into high-quality GIFs  
  https://docs.asciinema.org/manual/agg/

- **OBS Studio** – screen/window recording tool (creates MP4/WebM files)  
  https://obsproject.com/

- **FFmpeg** – powerful multimedia converter (MP4 → GIF, trimming, compression)  
  https://ffmpeg.org/

---

# 1. Terminal Recording (asciinema)

## Install
```bash
sudo apt update
sudo apt install asciinema
```

## Record a session
```bash
asciinema rec demo.cast
```

## Stop recording
Ctrl + D

## Record without upload
```bash
asciinema rec -c "bash" demo.cast
```

---

# 2. Convert asciinema → GIF (agg)

## Install agg
```bash
cargo install --git https://github.com/asciinema/agg
```

## Basic conversion
```bash
agg demo.cast demo.gif
```

## Improved quality
```bash
agg --theme monokai --font-size 18 demo.cast demo.gif
```

## Speed / cleanup
```bash
agg --speed 2 demo.cast demo.gif
agg --idle-time-limit 1 demo.cast demo.gif
```

---

# 3. Screen Recording (OBS Studio)

## Install
```bash
sudo apt update
sudo apt install obs-studio
```

Run:
```bash
obs
```

Recommended:
- 1920x1080
- 30 FPS
- High quality MP4

---

# 4. Convert MP4 → GIF (FFmpeg)

## Install
```bash
sudo apt install ffmpeg
```

## Best quality (palette method) (recommended)

### Step 1
```bash
ffmpeg -i demo_ArgoCD.mp4   -vf "fps=15,scale=1400:-1:flags=lanczos,palettegen"   palette.png
```

### Step 2
```bash
ffmpeg -i demo_ArgoCD.mp4 -i palette.png   -lavfi "fps=15,scale=1400:-1:flags=lanczos[x];[x][1:v]paletteuse=dither=bayer"   demo_ArgoCD.gif
```

---

## Simple version
```bash
ffmpeg -i demo.mp4 -vf "fps=15,scale=1200:-1:flags=lanczos" demo.gif
```

---

# Best Practices

- Use asciinema + agg for terminal demos
- Use OBS + FFmpeg for UI demos
