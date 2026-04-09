vim.pack.add({
  {
    src = "https://github.com/akinsho/toggleterm.nvim",
    version = "v2.13.1"
  },
  {
    src = "https://github.com/graknow/lf.nvim",
    version = "master",
  },
})

vim.g.lf_netrw = 1

local plugin = require("lf")

plugin.setup({
  escape_quit = false,
  winblend = 0,
  border = "single",
  highlights = { NormalFloat = { guibg = "NONE" } },
})

-- Before: lazy has cmd = Lf, is that needed?
vim.keymap.set("n", "<leader>ee", "<cmd>lua require('lf').start()<cr>", { desc = "File manager" })
