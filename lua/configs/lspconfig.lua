require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "css_variables",
  "cssls",
  "cssmodules_ls",
  "docker_compose_language_service",
  "tsserver",
  "ruff",
  "pyright",
}
vim.lsp.enable(servers)
