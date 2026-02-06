return {
  cmd = {
    'dotnet',
    '/home/grant/.vscode-oss/extensions/avaloniateam.vscode-avalonia-0.0.32/avaloniaServer/AvaloniaLanguageServer.dll',
  },
  filetypes = { 'xml' },
  root_markers = { '.sln', '.csproj', '.slnx' },
  root_dir = vim.fn.getcwd(),
}
