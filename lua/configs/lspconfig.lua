require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "tsserver",
  "ruff",
  "pyright",
}
vim.lsp.enable(servers)
