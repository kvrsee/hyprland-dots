#!/bin/bash
WALLPAPER_DIR="~/.config/hypr/wallpapers"
TRANSITIONS=("grow" "outer" "wipe" "wave" "pixel" "center")
mapfile -t wallpapers < <(find "$WALLPAPER_DIR" -type f | sort)
current=$(awww query | grep -oP 'image: \K.*' | head -n 1)
next=0
for i in "${!wallpapers[@]}"; do
  if [[ "${wallpapers[$i]}" == "$current" ]]; then
    next=$((i + 1))
    break
  fi
done
if ((next >= ${#wallpapers[@]})); then
  next=0
fi
transition="${TRANSITIONS[RANDOM % ${#TRANSITIONS[@]}]}"

awww img \
  --transition-type "$transition" \
  --transition-fps 60 \
  --transition-step 90 \
  "${wallpapers[$next]}"

ln -sf "${wallpapers[$next]}" ~/.cache/current-wall
