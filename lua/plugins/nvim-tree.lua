return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    nvimtree.setup({
      view = {
        width = 60,
        side = "right",
      },
      actions = {
        open_file = {
          window_picker = { enable = false, },
        },
      },
      git = { ignore = false, },
    })

    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
  end
}
