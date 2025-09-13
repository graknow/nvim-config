-- Telescope fuzzy finding
local builtin = require("telescope.builtin")

return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
        },
        config = function()
        end,
        keys = {
            { "<leader>ff", builtin.find_files,                                                       desc = "Find files in current directory", },
            { "<leader>fg", builtin.live_grep,                                                        desc = "Live grep on current directory file contents", },
            { "<leader>fr", builtin.git_files,                                                        desc = "Find files in git repository", },
            { "<leader>fb", builtin.buffers,                                                          desc = "Find files in buffer", },
            { "<leader>fh", builtin.help_tags,                                                        desc = "Find help tags", },
            { "<leader>fs", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Grep from string", },
            { "<leader>fc", builtin.current_buffer_fuzzy_find,                                        desc = "Live grep on buffer contents", },
            { "<leader>fR", builtin.lsp_references,                                                   desc = "Find LSP references for word under cursor." },
            { "<leader>fE", function() builtin.diagnostics({ bufnr = 0 }) end,                        desc = "Find diagnostic information for the current buffer." },
            { "<leader>fA", builtin.diagnostics,                                                      desc = "Find diagnostic information for all open buffers." },
            { "<leader>fI", builtin.lsp_implementations,                                              desc = "Goto the implementation under the current word or search all implementations." },
            { "<leader>fD", builtin.lsp_definitions,                                                  desc = "Goto the definition under the current word or search all definitions." },
            { "<leader>fT", builtin.lsp_type_definitions,                                             desc = "Goto the type definition under the current word or search all type definitions." },
        },
    },
}
