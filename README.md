# hyprland-dots
opinionated dotfiles

these are my personal arch linux dots

![Screenshot](screenshots/fastfetch.png)


## programs/ dependencies

| component | program/ dependency |
|:---|:---|
| wm | [hyprland](https://github.com/hyprwm/Hyprland) |
| fetch | [fastfetch](https://github.com/fastfetch-cli/fastfetch) |
| term | [kitty](https://github.com/kovidgoyal/kitty) |
| shell | [zsh](https://www.zsh.org/) (with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)) |
| notification | [mako](https://github.com/emersion/mako) |
| browser | [firefox](https://github.com/mozilla-firefox/firefox) |
| lock screen | [hyprlock](https://github.com/hyprwm/hyprlock/) |
| text editor | [neovim](https://github.com/neovim/neovim) |
| app launcher | [rofi](https://github.com/davatorium/rofi) |
| window switcher | [rofi](https://github.com/davatorium/rofi)
| bar | [waybar](https://github.com/Alexays/Waybar) |
| file explorer | [yazi](https://github.com/sxyazi/yazi) |
| wallpaper | [awww](https://github.com/LGFae/swww) |
| task manager | [btop](https://github.com/aristocratos/btop) (with this [catpuccin mocha theme](https://github.com/catppuccin/btop) |
| font | [jetbrainsmono nerd font](https://www.nerdfonts.com/) |
| icons theme | [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) |


## credits

theme : [catpuccin mocha](https://catppuccin.com/)

neovim config and waybar by [saatvik333](https://github.com/saatvik333)

kitty theme : [https://github.com/catppuccin/kitty](https://github.com/catppuccin/kitty)

## ps

if you use bluetooth you have to add the module on the bar by yourrself. i removed it because it would cause an ugly space between some other icons

<details>
<summary>json</summary>

```json
"bluetooth": {
  "interval": 5,
  "format-on": "<span size='14pt'>󰂯</span>",
  "format-off": "<span size='14pt'>󰂲</span>",
  "format-disabled": "<span size='14pt'>󰂲</span>",
  "format-connected": "<span size='14pt'>󰂱</span>",
  "format-no-controller": "span size='14pt'>󰂯</span>",
  "tooltip": true,
  "tooltip-format": "{device_enumerate}",
  "tooltip-format-enumerate-connected": "{device_address}",
  "tooltip-format-enumerate-connected-battery": "{device_address} | Battery: {device_battery_percentage}%",
  "on-click": "rfkill toggle bluetooth",
  "on-click-right": "blueman-manager"
},
```

add this to the modules.json

