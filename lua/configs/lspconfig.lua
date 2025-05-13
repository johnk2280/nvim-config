require("nvchad.configs.lspconfig").defaults()

local servers = {
    html = {},
    css_variables = {},
    cssls = {},
    cssmodules_ls = {},
    dockerls = {},
    docker_compose_language_service = {},
    eslint_d = {},
    jsonls = {},
    nginx_language_server = {},
    ts_ls = {},
    ruff = {},
    rust_analyzer = {},
    pyright = {},
}

for name, opts in pairs(servers) do
    vim.lsp.enable(name)
    vim.lsp.config(name, opts)
end
