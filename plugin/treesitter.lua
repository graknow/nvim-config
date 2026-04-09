vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    version = "main"
  }
})

local plugin = require("nvim-treesitter")

plugin.setup({
  ensure_installed = {
    "c",
    "cpp",
    "javascript",
    "typescript",
    "lua",
    "luadoc",
    "python",
    "rust",
    "vimdoc",
    "vim",
    "bash",
    "java",
    "html",
    "markdown",
    "markdown_inline",
    "latex",
    "regex",
    "tsx",
    "typst",
    "c_sharp",
    "xml",
  },
  sync_install = false,
  auto_install = false,
  -- indent = { enable = true },
  highlight = { enable = true },
  folds = { enable = true },
})
