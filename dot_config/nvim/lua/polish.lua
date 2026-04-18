-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

require("cyberdream").setup {
  transparent = false,
}

require("transparent").clear_prefix "NeoTree"
require("transparent").clear_prefix "lualine"
require("transparent").clear_prefix "BufferLine"

require("copilot").setup {}

vim.g.copilot_no_tab_map = true

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
vim.cmd [[
  " colorscheme kanagawa-wave
  " colorscheme kanagawa-paper-ink
  " colorscheme carbonfox
  " colorscheme nordic
  " colorscheme astromars
]]

-- Colorscheme based on the wallpaper
require("matugen").setup()
