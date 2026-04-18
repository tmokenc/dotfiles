-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-paper-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.cyberdream-nvim" },
  { import = "astrocommunity.colorscheme.nordic-nvim" },

  -- To disable the tabline
  { import = "astrocommunity.recipes.disable-tabline" },

  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.haskell" },

  { import = "astrocommunity.pack.hyprlang" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.toml" },
  -- { import = "astrocommunity.pack.html-css" },
  --{ import = "astrocommunity.pack.sql" },
  --{ import = "astrocommunity.pack.json" },
  -- { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.typescript-all-in-one" },
  -- import/override with your plugins folder
}
