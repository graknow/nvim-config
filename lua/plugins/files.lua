return {
  "lf.nvim",
  dir = "~/src/repos/graknow/lf.nvim/",
  cmd = "Lf",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
  opts = {
    highlights = { NormalFloat = { guibg = "NONE" } },
  },
  config = function()
    vim.g.lf_netrw = 1

    require("lf").setup({
      escape_quit = false,
      winblend = 0,
      border = "single",
    })
  end,
  keys = {
    { "<leader>ee", "<cmd>Lf<cr>", desc = "File manager" },
  },
}
