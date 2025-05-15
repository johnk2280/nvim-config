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
    rust_analyzer = {},
    isort = {},
    ruff = {},
    pyright = {
        settings = {
            python = {
                pythonPath = ".venv/bin/python",
                venvPath = ".venv/bin/python",
                analysis = {
                    autoImportCompletions = true,
                    autoSearchPaths = true,
                    diagnosticMode = "workspace",
                    typeCheckingMode = "strict",
                    useLibraryCodeForTypes = true,
                },
            },
        },
    },
}

for name, opts in pairs(servers) do
    vim.lsp.enable(name)
    vim.lsp.config(name, opts)
end
