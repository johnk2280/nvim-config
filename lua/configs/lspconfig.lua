require("nvchad.configs.lspconfig").defaults()

local servers = {
    html = {},

    css_variables = {},

    cssls = {},

    cssmodules_ls = {},

    dockerls = {},

    docker_compose_language_service = {},

    eslint_d = {
        -- https://github.com/ruicsh/nvim-config/blob/main/lsp/eslint.lua
        -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/eslint.lua
        cmd = {
            "vscode-eslint-language-server",
            "--stdio",
        },
        filetypes = {
            "javascript",
            "javascript.jsx",
            "javascriptreact",
            "typescript",
            "typescript.tsx",
            "typescriptreact",
        },
        root_markers = {
            ".eslintrc",
            ".eslintrc.cjs",
            ".eslintrc.js",
            ".eslintrc.json",
            ".eslintrc.yaml",
            ".eslintrc.yml",
            "eslint.config.cjs",
            "eslint.config.cts",
            "eslint.config.js",
            "eslint.config.mjs",
            "eslint.config.mts",
            "eslint.config.ts",
        },
        -- https://github.com/Microsoft/vscode-eslint#settings-options
        settings = {
            validate = "on",
            packageManager = nil,
            useESLintClass = false,
            experimental = {
                useFlatConfig = false,
            },
            codeActionOnSave = {
                enable = false,
                mode = "all",
            },
            format = true,
            quiet = false,
            onIgnoredFiles = "off",
            rulesCustomizations = {},
            run = "onType",
            problems = {
                shortenToSingleLine = false,
            },
            -- nodePath configures the directory in which the eslint server should start its node_modules resolution.
            -- This path is relative to the workspace folder (root dir) of the server instance.
            nodePath = "",
            -- use the workspace folder location or the file location (if no workspace folder is open) as the working directory
            workingDirectory = { mode = "location" },
            codeAction = {
                disableRuleComment = {
                    enable = true,
                    location = "separateLine",
                },
                showDocumentation = {
                    enable = true,
                },
            },
        },
        on_new_config = function(config, new_root_dir)
            -- The "workspaceFolder" is a VSCode concept. It limits how far the
            -- server will traverse the file system when locating the ESLint config
            -- file (e.g., .eslintrc).
            config.settings.workspaceFolder = {
                uri = new_root_dir,
                name = vim.fn.fnamemodify(new_root_dir, ":t"),
            }

            -- Support flat config
            if
                vim.fn.filereadable(new_root_dir .. "/eslint.config.js") == 1
                or vim.fn.filereadable(new_root_dir .. "/eslint.config.mjs") == 1
                or vim.fn.filereadable(new_root_dir .. "/eslint.config.cjs") == 1
                or vim.fn.filereadable(new_root_dir .. "/eslint.config.ts") == 1
                or vim.fn.filereadable(new_root_dir .. "/eslint.config.mts") == 1
                or vim.fn.filereadable(new_root_dir .. "/eslint.config.cts") == 1
            then
                config.settings.experimental.useFlatConfig = true
            end

            -- Support Yarn2 (PnP) projects
            local pnp_cjs = new_root_dir .. "/.pnp.cjs"
            local pnp_js = new_root_dir .. "/.pnp.js"
            if vim.loop.fs_stat(pnp_cjs) or vim.loop.fs_stat(pnp_js) then
                config.cmd = vim.list_extend({ "yarn", "exec" }, config.cmd)
            end
        end,
        handlers = {
            ["eslint/openDoc"] = function(_, result)
                if result then
                    vim.ui.open(result.url)
                end
                return {}
            end,
            ["eslint/confirmESLintExecution"] = function(_, result)
                if not result then
                    return
                end
                return 4 -- approved
            end,
            ["eslint/probeFailed"] = function()
                vim.notify("[lspconfig] ESLint probe failed.", vim.log.levels.WARN)
                return {}
            end,
            ["eslint/noLibrary"] = function()
                vim.notify("[lspconfig] Unable to find ESLint library.", vim.log.levels.WARN)
                return {}
            end,
        },
    },

    jsonls = {},

    nginx_language_server = {},

    ts_ls = require "configs.lsp.ts_ls",

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
