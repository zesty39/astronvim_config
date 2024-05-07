-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  -- { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.motion.hop-nvim" },
  -- { import = "astrocommunity.motion.tabout-nvim" },
}
