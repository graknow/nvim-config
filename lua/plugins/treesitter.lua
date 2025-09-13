-- Highlight, edit, navigate.
return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            pcall(require("nvim-treesitter.install").update({ with_sync = true }))
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Languages
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
                },

                highlight = { enable = true },
                indent = { enable = true, disable = { "python" } },
            })
        end
    },
}
