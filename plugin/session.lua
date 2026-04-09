vim.pack.add({
  {
    src = "https://github.com/rmagatti/auto-session",
    version = "pre-nvim-0.10",
  }
})

local plugin = require("auto-session")

plugin.setup({
  auto_save = true,
  suppressed_dirs = {
    "~/",
    "~/Projects",
    "~/Downloads",
    "/",
    "~/3DModels",
    "~/app",
    "~/Documents",
    "~/Music",
    "~/Videos"
  },
})

vim.keymap.set("n", "<leader>wl", "<cmd>SessionSearch<CR>", { desc = "Session search" })
vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Session save" })
vim.keymap.set("n", "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", { desc = "Toggle autosave" })
