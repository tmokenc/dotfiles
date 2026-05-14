local M = {}

function M.setup()
  require("base16-colorscheme").setup {
    -- Background tones
    base00 = "#171213", -- Default Background
    base01 = "#241e20", -- Lighter Background (status bars)
    base02 = "#2f282a", -- Selection Background
    base03 = "#9e8c90", -- Comments, Invisibles
    -- Foreground tones
    base04 = "#d5c2c6", -- Dark Foreground (status bars)
    base05 = "#ebe0e1", -- Default Foreground
    base06 = "#ebe0e1", -- Light Foreground
    base07 = "#ebe0e1", -- Lightest Foreground
    -- Accent colors
    base08 = "#ffb4ab", -- Variables, XML Tags, Errors
    base09 = "#efbc95", -- Integers, Constants
    base0A = "#e2bdc7", -- Classes, Search Background
    base0B = "#ffb0ca", -- Strings, Diff Inserted
    base0C = "#efbc95", -- Regex, Escape Chars
    base0D = "#ffb0ca", -- Functions, Methods
    base0E = "#e2bdc7", -- Keywords, Storage
    base0F = "#93000a", -- Deprecated, Embedded Tags
  }
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  "sigusr1",
  vim.schedule_wrap(function()
    package.loaded["matugen"] = nil
    require("matugen").setup()
  end)
)

return M
