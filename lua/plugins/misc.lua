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
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = true,
  },
  {
    "nvim-lua/plenary.nvim",
    version = "*",
  },
}
