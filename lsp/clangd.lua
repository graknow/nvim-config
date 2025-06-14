return {
  cmd = {
    "clangd",
  },
  filetypes = {
    "c",
  },
  root_markers = {
    ".git",
  },

  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
