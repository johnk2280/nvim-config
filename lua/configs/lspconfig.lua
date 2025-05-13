require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "css_variables",
  "cssls",
  "cssmodules_ls",
  "dockerls",
  "docker_compose_language_service",
  "eslint_d",
  "jsonls",
  "nginx_language_server",
  "tsserver",
  "ruff",
  "pyright",
}
vim.lsp.enable(servers)
