return {
  "mbbill/undotree",
  config = function()
  end,
  keys = {
    { "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle undotree" },
  }
}
