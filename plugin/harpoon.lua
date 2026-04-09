vim.pack.add({
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
    version = "v0.1.4"
  },
  {
    src = "https://github.com/ThePrimeagen/harpoon",
    version = "harpoon2",
  }
})

local plugin = require("harpoon")
plugin:setup()

vim.keymap.set("n", "<leader>A", function() plugin:list():add() end, { desc = "Harpoon add file" })
vim.keymap.set("n", "<leader>a", function() plugin.ui:toggle_quick_menu(plugin:list()) end, { desc = "Harpoon quick menu" })
vim.keymap.set("n", "<leader>1", function() plugin:list():select(1) end, { desc = "Harpoon to file 1" })
vim.keymap.set("n", "<leader>2", function() plugin:list():select(2) end, { desc = "Harpoon to file 2" })
vim.keymap.set("n", "<leader>3", function() plugin:list():select(3) end, { desc = "Harpoon to file 3" })
vim.keymap.set("n", "<leader>4", function() plugin:list():select(4) end, { desc = "Harpoon to file 4" })
vim.keymap.set("n", "<leader>5", function() plugin:list():select(5) end, { desc = "Harpoon to file 5" })
