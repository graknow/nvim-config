vim.lsp.enable({
  "lua-ls",
  "clangd",
  "rust-analyzer",
  "ts-ls",
})

vim.diagnostic.config({
  -- virtual_lines = true,
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})

vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "<C-w>d", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<C-w><C-d>",  function() vim.diagnostic.open_float() end)

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local bufmap = function(mode, rhs, lhs)
      bufmap(mode, rhs, lhs, {buffer = event.buf})
    end
    bufmap("n", "gd", function() vim.lsp.buf.definition() end)
    bufmap("n", "K", function() vim.lsp.buf.hover() end)

    bufmap("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
    bufmap("n", "<leader>vf", function() vim.diagnostic.open_float() end)
    bufmap("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
    bufmap("n", "<leader>vrr", function() vim.lsp.buf.references() end)
    bufmap("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
    bufmap('n', '<leader>vi', function() vim.lsp.buf.implementation() end)
    bufmap('n', '<leader>vdo', function() vim.lsp.buf.document_symbol() end)
    bufmap('n', '<leader>vdf', function() vim.lsp.buf.definition() end)
    bufmap('n', '<leader>vt', function() vim.lsp.buf.type_definition() end)
    bufmap('n', '<leader>vdc', function() vim.lsp.buf.declaration() end)

    bufmap("i", "<C-h>", function() vim.lsp.buf.signature_help() end)
  end,
})
