-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        Normal = { bg = "NONE", ctermbg = "NONE" },
        NormalNC = { bg = "NONE", ctermbg = "NONE" },
        NormalFloat = { bg = "NONE", ctermbg = "NONE" },
        FloatBorder = { fg="#111317", bg = "NONE", ctermbg = "NONE" },
        CursorColumn = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
        -- CursorLine = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
        CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
        LineNr = {},
        SignColumn = {},
        StatusLine = {},
        NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
        NeoTreeFloatTitle = { fg="#50a4e9", bg = "NONE", ctermbg = "NONE" },
        NeoTreeWinSeparator = { fg="#111317", bg = "NONE", ctermbg = "NONE" },
        NeoTreeVertSplit = { fg="#111317", bg = "NONE", ctermbg = "NONE" },
        TabLine = { bg = "NONE", ctermbg = "NONE" },
        TabLineFill = { bg = "NONE", ctermbg = "NONE" },
        VertSplit = { fg="#111317", bg = "NONE", ctermbg = "NONE" },
        WinSeparator = { fg="#111317", bg = "NONE", ctermbg = "NONE" },
        WinBarNC = { bg = "NONE", ctermbg = "NONE" },
        TelescopeNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopePreviewNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopePromptNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopeResultsNormal = { bg = "NONE", ctermbg = "NONE" },
        TelescopePreviewBorder = { fg="#111317", bg = "NONE", ctermbg = "NONE", blend=0 },
        TelescopeResultsBorder = { fg="#111317", bg = "NONE", ctermbg = "NONE", blend=0 },
        TelescopePromptBorder = { fg="#111317", bg = "NONE", ctermbg = "NONE", blend=0 },
        TelescopePromptCounter= { fg="#111317", bg = "NONE", ctermbg = "NONE" },
      },
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
