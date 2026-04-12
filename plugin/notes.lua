vim.pack.add({
  {
    src = "https://github.com/OXY2DEV/markview.nvim",
    version = "v28.1.0",
  },
})

local plugin_mv = require("markview")

plugin_mv.setup({
  preview = {
    icon_provider = "devicons",
  },
})
