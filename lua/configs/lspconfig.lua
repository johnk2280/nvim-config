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
    ts_ls = {
        -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ts_ls.lua
        -- https://github.com/typescript-language-server/typescript-language-server/blob/master/docs/configuration.md
        cmd = {
            "typescript-language-server",
            "--stdio",
        },
        init_options = {
            hostInfo = "neovim",
            preferences = {
                -- importModuleSpecifierPreference = "shortest",  -- by default "shortest", avaliable: 'shortest', 'project-relative', 'relative', 'non-relative'
                -- importModuleSpecifierEnding = "auto", -- by default "auto", avaliable: 'auto', 'minimal', 'index', 'js'
                -- organiseImportsIgnoreCase = "auto", -- by default "auto", avaliable: 'auto', boolean
                -- includePackageJsonAutoImports = "auto", -- by default "auto", avaliable: 'auto', 'on', 'off'
                jsxAttributeCompletionStyle = "braces",
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = false, -- by default
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
            },
        },
        filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
        },
        root_makers = {
            {
                "tsconfig.json",
                "jsconfig.json",
                "package.json",
            },
            ".git",
        },
    },
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
