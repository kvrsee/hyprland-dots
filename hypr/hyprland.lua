local terminal = "kitty"
local fileManager = "kitty -e yazi"
local menu = "rofi -show drun"
local mainMod = "SUPER"

hl.layer_rule({
  name = "mako-slide",
  match = { namespace = "notifications" },
  animation = "slide",
})

hl.env("XCURSOR_SIZE", "30")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "macOS")
hl.env("HYPRCURSOR_THEME", "apple_cursor")

hl.monitor({
  output = "HDMI-A-1",
  disabled = false,
  mode = "1920x1080@144.00Hz",
  position = "0x0",
  scale = 1,
  cm = "srgb",
})

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 15,
    border_size = 2,
    col = {
      active_border = {
        colors = { "rgba(cba6f7ff)" },
        angle = 45,
      },
      inactive_border = "0x00bf4040",
    },
    resize_on_border = false,
    allow_tearing = true,
    layout = "dwindle",
  },

  decoration = {
    rounding = 0,
    rounding_power = 2,
    active_opacity = 1.0,
    inactive_opacity = 1.0,

    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = 0xee1a1a1a,
    },

    blur = {
      enabled = true,
      size = 2,
      passes = 3,
      vibrancy = 0.1696,
    },
  },

  cursor = {
    enable_hyprcursor = true,
    hide_on_touch = false,
    no_hardware_cursors = 0,
    no_warps = false,
    zoom_factor = 1.0,
  },

  dwindle = {
    preserve_split = true,
    force_split = 2,
    smart_resizing = false,
  },

  master = {
    new_status = "master",
  },

  scrolling = {
    fullscreen_on_one_column = true,
  },

  misc = {
    force_default_wallpaper = -1,
    disable_hyprland_logo = false,
    animate_mouse_windowdragging = true,
  },

  input = {
    kb_layout = "us",
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",
    follow_mouse = 1,
    sensitivity = 0,

    touchpad = {
      natural_scroll = false,
    },
  },

  xwayland = {
    force_zero_scaling = true,
    use_nearest_neighbor = true,
  },

  animations = {
    enabled = true,
  },
})

hl.curve("easeOutQuint", {
  type = "bezier",
  points = { { 0.23, 1 }, { 0.32, 1 } },
})

hl.curve("easeInOutCubic", {
  type = "bezier",
  points = { { 0.65, 0.05 }, { 0.36, 1 } },
})

hl.curve("linear", {
  type = "bezier",
  points = { { 0, 0 }, { 1, 1 } },
})

hl.curve("almostLinear", {
  type = "bezier",
  points = { { 0.5, 0.5 }, { 0.75, 1 } },
})

hl.curve("quick", {
  type = "bezier",
  points = { { 0.15, 0 }, { 0.1, 1 } },
})

hl.curve("ease", {
  type = "bezier",
  points = { { 0.25, 0.1 }, { 0.25, 1 } },
})

hl.curve("easy", {
  type = "spring",
  mass = 1,
  stiffness = 238.1191,
  dampening = 24.21279333,
})

hl.animation({
  leaf = "global",
  enabled = true,
  speed = 10,
  bezier = "default",
})

hl.animation({
  leaf = "border",
  enabled = true,
  speed = 5.39,
  bezier = "easeOutQuint",
})

hl.animation({
  leaf = "windows",
  enabled = true,
  speed = 4.79,
  bezier = "quick",
  style = "popin",
})

hl.animation({
  leaf = "windowsIn",
  enabled = true,
  speed = 4.1,
  bezier = "quick",
})

hl.animation({
  leaf = "windowsOut",
  enabled = true,
  speed = 1.49,
  bezier = "almostLinear",
})

hl.animation({
  leaf = "fadeIn",
  enabled = true,
  speed = 1.73,
  bezier = "almostLinear",
})

hl.animation({
  leaf = "fadeOut",
  enabled = true,
  speed = 1.46,
  bezier = "almostLinear",
})

hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 3.03,
  bezier = "quick",
})

hl.animation({
  leaf = "layers",
  enabled = true,
  speed = 3.81,
  bezier = "easeOutQuint",
})

hl.animation({
  leaf = "layersIn",
  enabled = true,
  speed = 4,
  bezier = "easeOutQuint",
  style = "fade",
})

hl.animation({
  leaf = "layersOut",
  enabled = true,
  speed = 1.5,
  bezier = "linear",
  style = "fade",
})

hl.animation({
  leaf = "fadeLayersIn",
  enabled = true,
  speed = 1.79,
  bezier = "almostLinear",
})

hl.animation({
  leaf = "fadeLayersOut",
  enabled = true,
  speed = 1.39,
  bezier = "almostLinear",
})

hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 1.94,
  bezier = "ease",
  style = "slidevert",
})

hl.animation({
  leaf = "workspacesIn",
  enabled = true,
  speed = 1.21,
  bezier = "ease",
  style = "slidevert",
})

hl.animation({
  leaf = "workspacesOut",
  enabled = true,
  speed = 1.94,
  bezier = "ease",
  style = "slidevert",
})

hl.animation({
  leaf = "zoomFactor",
  enabled = true,
  speed = 7,
  bezier = "quick",
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})

hl.device({
  name = "epic-mouse-v1",
  sensitivity = -0.5,
})

hl.layer_rule({
  match = {
    namespace = "rofi",
  },
  blur = true,
  ignore_alpha = 0.15,
})

hl.window_rule({
  name = "suppress-maximize-events",
  match = {
    class = ".*",
  },
  suppress_event = "maximize",
})

hl.window_rule({
  name = "fix-xwayland-drags",
  match = {
    class = "^$",
    title = "^$",
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },
  no_focus = true,
})

hl.window_rule({
  name = "move-hyprland-run",
  match = {
    class = "hyprland-run",
  },
  move = "20 monitor_h-120",
  float = true,
})

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + X", hl.dsp.window.close())

hl.bind(
  mainMod .. " + M",
  hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd("rofi -show window"))

hl.bind(
  mainMod .. " + C",
  hl.dsp.exec_cmd("rofi -modi \"clipboard:greenclip print\" -show clipboard -run-command '{cmd}'")
)

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("/home/zann/.config/hypr/scripts/wallpaper-cycle.sh"))

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + Left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + Up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + Down", hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

for i = 1, 10 do
  local key = i % 10
  hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | satty --filename -'))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
  { locked = true, repeating = true }
)

hl.bind(
  "XF86AudioLowerVolume",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
  { locked = true, repeating = true }
)

hl.bind(
  "XF86AudioMute",
  hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  { locked = true, repeating = true }
)

hl.bind(
  "XF86AudioMicMute",
  hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
  { locked = true, repeating = true }
)

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.on("hyprland.start", function()
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("mako")
  hl.exec_cmd("/home/zann/.config/hypr/scripts/wallpaper-cycle.sh")
end)

