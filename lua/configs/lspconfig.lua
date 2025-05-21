require("nvchad.configs.lspconfig").defaults()

local servers = {
    dockerls = {},
    docker_compose_language_service = {},

    html = require "configs.lsp.html",
    css_variables = require "configs.lsp.css_variables",
    cssls = require "configs.lsp.cssls",
    cssmodules_ls = require "configs.lsp.cssmodules_ls",
    eslint_d = require "configs.lsp.eslint_d",
    jsonls = {},
    ts_ls = require "configs.lsp.ts_ls",

    nginx_language_server = {},

    rust_analyzer = {},

    isort = {},
    ruff = require "configs.lsp.ruff",
    pyright = require "configs.lsp.pyright",
}

for name, opts in pairs(servers) do
    vim.lsp.enable(name)
    vim.lsp.config(name, opts)
end
