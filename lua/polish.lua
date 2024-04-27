-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.filetype.add {
  extension = {
    norg = "norg",
  },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
}

vim.cmd [[
  autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q]")
]]
