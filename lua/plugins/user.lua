-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
          local cmp, luasnip = require "cmp", require "luasnip"
          opts.mapping["<C-e>"] = cmp.mapping { i = cmp.mapping.close(), c = cmp.mapping.close() }
          opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" })
        end,
      },
    },
    opts = {
      tabkey = "<Tab>",
      act_as_tab = true,
      behavior = "nested",
    }
  },
  {
    "smoka7/hop.nvim",
    opts = {},
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["s"] = { function() require("hop").hint_words() end, desc = "Hop hint words" },
            ["<S-s>"] = { function() require("hop").hint_lines() end, desc = "Hop hint lines" },
          },
        },
      },
    },
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { hop = true } },
  },
  {
    "Zeioth/compiler.nvim",
    dependencies = {
      {
        "stevearc/overseer.nvim",
        opts = {
          task_list = { -- this refers to the window that shows the result
            direction = "bottom",
            min_height = 25,
            max_height = 25,
            default_detail = 1,
            bindings = {
              ["q"] = function() vim.cmd "OverseerClose" end,
            },
          },
        },
        config = function(_, opts) require("overseer").setup(opts) end,
      },
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            n = {
              ["<Leader>r"] = { desc = " Runner" },
              ["<Leader>rr"] = { "<cmd>CompilerOpen<cr>", desc = "Open Runners" },
              ["<Leader>rt"] = { "<cmd>CompilerToggleResults<cr>", desc = "Open or close the compiler results" },
              ["<Leader>rd"] = { "<cmd>CompilerRedo<cr>", desc = "Redo the last selected option" },
              ["<Leader>rs"] = { "<cmd>CompilerStop<cr>", desc = "Dispose all tasks" },
            },
          },
        },
      }
    },
    cmd = { "CompilerOpen", "CompilerToggleResults" },
    opts = {},
  },

  -- == Examples of Overriding Plugins ==

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window.position = "float"
      opts.popup_border_style = "rounded"
    end
  },
}
