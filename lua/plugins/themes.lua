--return {
--  "folke/tokyonight.nvim",
--  lazy = false,
--  priority = 1000,
--  opts = {},
--  config = function ()
--    vim.cmd [[colorscheme tokyonight-night]]
--  end,
--}

--return {
--    "bluz71/vim-nightfly-colors",
--    name = "nightfly",
--    lazy = false,
--    priority = 1000,
--    config = function ()
--        vim.cmd [[colorscheme nightfly]]
--    end,
--}

return {
  "rose-pine/neovim",
  name = "rose-pine-moon",
  config = function()
    vim.cmd("colorscheme rose-pine-moon")
  end
}
