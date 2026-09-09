vim.pack.add({
  {
    src = "https://github.com/rose-pine/neovim",
    version = "v3.0.2"
  }
})

require("rose-pine").setup({
  variant = "moon",
  dark_variant = "moon",
  highlight_groups = {
    Visual = {
      fg = "text",
      bg = "love",
      inherit = false,
    },
  },
})

vim.cmd("colorscheme rose-pine-moon")
