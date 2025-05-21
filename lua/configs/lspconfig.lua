require("nvchad.configs.lspconfig").defaults()

local servers = {
    html = {},

    css_variables = {},

    cssls = {},

    cssmodules_ls = {},

    dockerls = {},

    docker_compose_language_service = {},

    eslint_d = require "configs.lsp.eslint_d",

    jsonls = {},

    nginx_language_server = {},

    ts_ls = require "configs.lsp.ts_ls",

    rust_analyzer = {},

    isort = {},

    ruff = {},

    pyright = require "configs.lsp.pyright",
}

for name, opts in pairs(servers) do
    vim.lsp.enable(name)
    vim.lsp.config(name, opts)
end
