-- Highlight, edit, navigate.
return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter").install({
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
      })
    end
  },
}
