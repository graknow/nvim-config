return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    delay = 300,
    icons = {
      rules = false,
      breadcrumb = " ", -- symbol used in the command line area that shows your active key combo
      separator = "󱦰  ", -- symbol used between a key and it's label
      group = "󰹍 ", -- symbol prepended to a group
    },
    plugins = {
      spelling = {
        enabled = false,
      },
    },
    win = {
      height = {
        max = math.huge,
      },
    },
    show_keys = true,
    spec = {
      {
        mode = { "n", "v" },
        { "<leader>f", group = "Find" },
        { "<leader>F", group = "Format" },
        { "<leader>G", group = "Git" },
        { "<leader>g", group = "Gitsigns" },
        { "<leader>R", group = "Replace" },
        { "<leader>v", group = "LSP" },
        { "<leader>t", group = "Diagnostics/Tests (Trouble)" },
        { "<leader>s", group = "Search" },
        { "<leader>W", group = "Workspace" },
        { "[",         group = "prev" },
        { "]",         group = "next" },
        { "g",         group = "goto" },
      },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
