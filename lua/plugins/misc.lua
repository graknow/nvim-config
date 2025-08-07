-- Plugins that don't need config.

return {
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = true,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
    config = true,
  },
  {
    "nvim-lua/plenary.nvim",
    version = "*",
  },
}
