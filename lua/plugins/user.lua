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
    "abecodes/tabout.nvim",
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
    opts = function ()
      vim.api.nvim_set_keymap('i', '<C-f>', "<Plug>(TaboutMulti)", {silent = true})
      vim.api.nvim_set_keymap('i', '<C-b>', "<Plug>(TaboutBackMulti)", {silent = true})

      return {}
    end,
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
