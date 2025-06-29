local wezterm = require 'wezterm'

return {
  enable_wayland = true,             -- crucial for Wayland support
  font = wezterm.font_with_fallback {
    "JetBrains Mono",
    "Noto Sans Mono",
    "Fira Code",
  },
  font_size = 11.5,

  -- Transparency settings
  window_background_opacity = 0.85,       -- main transparency level
  -- text_background_opacity = 0.85,         -- background of text

  -- Remove borders, optional
  -- window_decorations = "RESIZE",

  -- -- Padding for aesthetics
  -- window_padding = {
  --   left = 5,
  --   right = 5,
  --   top = 2,
  --   bottom = 2,
  -- },

  -- Optional: disable cursor blink
  default_cursor_style = "SteadyBlock",

  keys = {
    -- Disable the default binding for CTRL+SHIFT+X
    {
      key = 'Space', -- Note: 'X' for SHIFT+X
      mods = 'CTRL|SHIFT',
      action = wezterm.action.ActivateCopyMode,
    },
  },
}
