require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

vim.lsp.config("gdscript", {
  cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
  root_markers = { "project.godot", ".git" },
  filetypes = { "gdscript", "gd" },
  single_file_support = false,
})

vim.lsp.enable("gdscript")
