local wezterm = require('wezterm')
local mux = wezterm.mux

local M = {}

M.setup = function()
   wezterm.on('gui-startup', function(cmd)
      local _, _, window = mux.spawn_window(cmd or {})
      -- Don't maximize the window on startup. On large displays this can be
      -- undesirable, so we leave the window at the size determined by the
      -- terminal or the window manager.
      -- If you prefer a specific size instead of maximizing, uncomment and
      -- adjust one of the examples below.
      -- Example: set size in pixels (width, height)
      -- window:gui_window():set_inner_size(1200, 800)
      -- Example: set size in columns/rows
      -- window:gui_window():set_dimensions({cols=120, rows=40})
   end)
end

return M
