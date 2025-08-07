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
    },
  },
}
