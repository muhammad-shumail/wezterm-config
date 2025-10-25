local gpu_adapters = require('utils.gpu-adapter')
local wezterm = require('wezterm')

return {
   max_fps = 120,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   underline_thickness = '1.5pt',

   -- Cursor
   animation_fps = 120,
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   default_cursor_style = 'BlinkingBlock',
   cursor_blink_rate = 650,

   -- Color Scheme (modern dark custom palette)
   colors = {
      foreground = "#c0caf5",
      background = "#1e1e2e",
      cursor_bg = "#c0caf5",
      cursor_fg = "#1e1e2e",
      selection_bg = "#414868",
      selection_fg = "#c0caf5",

      tab_bar = {
         background = "#1a1b26",
         active_tab = {
            bg_color = "#2f334d",
            fg_color = "#a9b1d6",
            intensity = "Bold",
         },
         inactive_tab = {
            bg_color = "#1e1e2e",
            fg_color = "#565f89",
         },
         inactive_tab_hover = {
            bg_color = "#24283b",
            fg_color = "#c0caf5",
            italic = true,
         },
         new_tab = {
            bg_color = "#1e1e2e",
            fg_color = "#7aa2f7",
         },
         new_tab_hover = {
            bg_color = "#2f334d",
            fg_color = "#c0caf5",
            italic = true,
         },
      },
   },

   window_background_opacity = 1.0,

   -- Scrollbar
   enable_scroll_bar = true,

   -- Tab Bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false,
   tab_max_width = 25,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- Command Palette
   command_palette_fg_color = '#c0caf5',
   command_palette_bg_color = '#1a1b26',
   command_palette_font_size = 12,
   command_palette_rows = 25,

   -- Window
   window_padding = {
      left = 2,
      right = 2,
      top = 6,
      bottom = 4,
   },
   adjust_window_size_when_changing_font_size = false,
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#1a1b26',
   },

   inactive_pane_hsb = {
      saturation = 0.9,
      brightness = 0.8,
   },

   -- Visual Bell
   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 250,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 250,
      target = 'CursorColor',
   },
}

