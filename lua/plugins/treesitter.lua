-- Highlight, edit, navigate.
return
{
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "javascript",
        "typescript",
        "go",
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
        "regex",
        "tsx",
        "c_sharp",
        "xml",
      },
      sync_install = false,
      auto_install = false,
      -- indent = { enable = true },
      highlight = { enable = true },
      -- folds = { enable = true },
    },
  },
}
