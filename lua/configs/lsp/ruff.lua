-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ruff.lua
-- https://docs.astral.sh/ruff/editors/settings/

return {
    cmd = {
        "ruff",
        "server",
    },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "ruff.toml",
        ".ruff.toml",
        ".git",
    },
    -- settings = {},
    init_options = {
        configuration = "./pyproject.toml",
        settings = {
            configurationPreference = "filesystemFirst",
            exclude = {
                ".bzr",
                ".direnv",
                ".eggs",
                ".git",
                ".git-rewrite",
                ".hg",
                ".ipynb_checkpoints",
                ".mypy_cache",
                ".nox",
                ".pants.d",
                ".pyenv",
                ".pytest_cache",
                ".pytype",
                ".ruff_cache",
                ".svn",
                ".tox",
                ".venv",
                ".vscode",
                "__pypackages__",
                "_build",
                "buck-out",
                "build",
                "dist",
                "node_modules",
                "site-packages",
                "venv",
                ".idea",
                "temp",
                "../temp",
                ".coverage",
                ".env",
                "cov_html",
            },
            lineLength = 79,
            fixAll = true, -- by default
            organizeImports = true, -- by default
            showSyntaxErrors = true, -- by default
            codeAction = {
                disableRuleComment = {
                    enable = true, -- by default
                },
                fixViolation = {
                    enable = true, -- by default
                },
            },
            lint = {
                enable = true, -- by default
                preview = true, -- default null
                select = {
                    -- # eradicate - removes commented-out code from Python files
                    -- # https://docs.astral.sh/ruff/rules/#eradicate-era
                    "ERA",
                    -- # FastAPI rules
                    -- # https://docs.astral.sh/ruff/rules/#fastapi-fast
                    "FAST",
                    -- # A flake8 extension that checks for blind,
                    -- # catch-all except: and except Exception: statements.
                    -- # https://pypi.org/project/flake8-blind-except/
                    "BLE",
                    -- # "I",
                    "E4",
                    "E7",
                    "E9",
                    "F",
                    "B",
                    "COM",
                    "RET",
                    "SIM",
                    "ARG",
                    "PTH",
                    "TD",
                    "RUF",
                    "N",
                },
            },
            format = {
                preview = true, -- default null
            },
        },
    },
}
