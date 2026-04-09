vim.pack.add({
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
    version = "v0.1.4"
  },
  {
    src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  {
    src = "https://github.com/nvim-telescope/telescope.nvim",
    version = "v0.2.2",
  },
})

local plugin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", plugin.find_files,
  { desc = "Find files in current directory" }
)
vim.keymap.set("n", "<leader>fg", plugin.live_grep,
  { desc = "Live grep on current directory file contents" }
)
vim.keymap.set("n", "<leader>fr", plugin.git_files,
  { desc = "Find files in git repository" }
)
vim.keymap.set("n", "<leader>fb", plugin.buffers,
  { desc = "Find files in buffer" }
)
vim.keymap.set("n", "<leader>fh", plugin.help_tags,
  { desc = "Find help tags" }
)
vim.keymap.set("n", "<leader>fs", function() plugin.grep_string({ search = vim.fn.input("Grep > ") }) end,
  { desc = "Grep from string" }
)
vim.keymap.set("n", "<leader>fc", plugin.current_buffer_fuzzy_find,
  { desc = "Live grep on buffer contents" }
)
vim.keymap.set("n", "<leader>fR", plugin.lsp_references,
  { desc = "Find LSP references for word under cursor." }
)
vim.keymap.set("n", "<leader>fE", function() plugin.diagnostics({ bufnr = 0 }) end,
  { desc = "Find diagnostic information for the current buffer." }
)
vim.keymap.set("n", "<leader>fA", plugin.diagnostics,
  { desc = "Find diagnostic information for all open buffers." }
)
vim.keymap.set("n", "<leader>fI", plugin.lsp_implementations,
  { desc = "Goto the implementation under the current word or search all implementations." }
)
vim.keymap.set("n", "<leader>fD", plugin.lsp_definitions,
  { desc = "Goto the definition under the current word or search all definitions." }
)
vim.keymap.set("n", "<leader>fT", plugin.lsp_type_definitions,
  { desc = "Goto the type definition under the current word or search all type definitions." }
)


return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
        },
        keys = {
        },
    },
}
