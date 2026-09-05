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
| cursor | [macos monterey cursor](https://github.com/ful1e5/apple_cursor) |


## shortcuts

### applications

|      keybind     | action                    |
| :--------------: | ------------------------- |
| `SUPER + Return` | open terminal             |
|    `SUPER + E`   | open file manager         |
|    `SUPER + R`   | open application launcher |
|  `SUPER + Space` | open application launcher |
|    `ALT + Tab`   | switch windows            |
|    `SUPER + W`   | cycle wallpaper           |
|    `SUPER + L`   | lock screen               |

### window management

|   keybind   | action             |
| :---------: | ------------------ |
| `SUPER + F` | toggle fullscreen  |
| `SUPER + V` | toggle floating    |
| `SUPER + P` | toggle pseudo mode |
| `SUPER + J` | toggle split       |
| `SUPER + Q` | close window       |
| `SUPER + X` | close window       |
| `SUPER + M` | shutdown / exit    |

### window focus

|   keybind   | action      |
| :---------: | ----------- |
| `SUPER + ←` | focus left  |
| `SUPER + →` | focus right |
| `SUPER + ↑` | focus up    |
| `SUPER + ↓` | focus down  |

### move windows

|       keybind       | action                           |
| :-----------------: | -------------------------------- |
| `SUPER + SHIFT + ←` | move window left                 |
| `SUPER + SHIFT + →` | move window right                |
| `SUPER + SHIFT + ↑` | move window up                   |
| `SUPER + SHIFT + ↓` | move window down                 |
| `SUPER + SHIFT + P` | move window to special workspace |

### workspaces

|        keybind        | action                      |
| :-------------------: | --------------------------- |
|     `SUPER + 1–9`     | switch to workspace         |
|      `SUPER + 0`      | switch to workspace 10      |
| `SUPER + SHIFT + 1–9` | move window to workspace    |
|  `SUPER + SHIFT + 0`  | move window to workspace 10 |
|      `SUPER + S`      | toggle special workspace    |
|  `SUPER + Scroll Up`  | next workspace              |
| `SUPER + Scroll Down` | previous workspace          |
|    `3-Finger Swipe`   | switch workspace            |

### mouse

|        keybind        | action        |
| :-------------------: | ------------- |
|  `SUPER + Left Click` | move window   |
| `SUPER + Right Click` | resize window |

### screenshots

|       keybind       | action          |
| :-----------------: | --------------- |
| `SUPER + SHIFT + S` | take screenshot |

### media

|         keybind         | action                 |
| :---------------------: | ---------------------- |
|  `XF86AudioRaiseVolume` | increase volume        |
|  `XF86AudioLowerVolume` | decrease volume        |
|     `XF86AudioMute`     | toggle mute            |
|    `XF86AudioMicMute`   | toggle microphone mute |
|  `XF86MonBrightnessUp`  | increase brightness    |
| `XF86MonBrightnessDown` | decrease brightness    |
|     `XF86AudioNext`     | next track             |
|     `XF86AudioPrev`     | previous track         |
|     `XF86AudioPlay`     | play / pause           |
|     `XF86AudioPause`    | play / pause           |



## credits

theme : [catpuccin mocha](https://catppuccin.com/)

neovim config and waybar by [saatvik333](https://github.com/saatvik333)

kitty theme : [https://github.com/catppuccin/kitty](https://github.com/catppuccin/kitty)


## ps

if you use bluetooth you have to add the module on the bar by yourrself. i removed it because it would cause an ugly space between some other icons

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

