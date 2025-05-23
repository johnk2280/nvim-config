-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ruff.lua
-- https://docs.astral.sh/ruff/editors/settings/
-- https://docs.astral.sh/ruff/editors/setup/#neovim

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
            logLevel = "debug",
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

                    -- flake8-annotations
                    -- https://docs.astral.sh/ruff/rules/#flake8-annotations-ann
                    "ANN",

                    -- flake8-async
                    -- https://docs.astral.sh/ruff/rules/#flake8-async-async
                    "ASYNC",

                    -- flake8-bandid
                    -- https://docs.astral.sh/ruff/rules/#flake8-bandit-s
                    "S",

                    -- # A flake8 extension that checks for blind,
                    -- # catch-all except: and except Exception: statements.
                    -- # https://pypi.org/project/flake8-blind-except/
                    "BLE",

                    -- flake8-bugbear
                    -- https://docs.astral.sh/ruff/rules/#flake8-bugbear-b
                    "B",

                    -- flake-8-builtins
                    -- https://docs.astral.sh/ruff/rules/#flake8-builtins-a
                    "A",

                    -- flake8-commas
                    -- https://docs.astral.sh/ruff/rules/#flake8-commas-com
                    "COM",

                    -- flake8-comprehensions
                    -- https://docs.astral.sh/ruff/rules/#flake8-comprehensions-c4
                    "C4",

                    -- flake8-datetimez
                    -- https://docs.astral.sh/ruff/rules/#flake8-datetimez-dtz
                    "DTZ",

                    -- flake8-errmsg
                    -- https://docs.astral.sh/ruff/rules/#flake8-errmsg-em
                    "EM",

                    -- flake8-import-conventions
                    -- https://docs.astral.sh/ruff/rules/#flake8-import-conventions-icn
                    "ICN",

                    -- flake8-logging
                    -- https://docs.astral.sh/ruff/rules/#flake8-logging-log
                    "LOG",

                    -- flake8-logging-format
                    -- https://docs.astral.sh/ruff/rules/#flake8-logging-format-g
                    "G",

                    -- # "I",
                    "E4",
                    "E7",
                    "E9",
                    "F",
                    "RET",
                    "SIM",
                    "ARG",
                    "PTH",
                    "TD",
                    "RUF",
                    "N",
                },
                fixable = {
                    "COM",
                    "F401",
                },
            },
            format = {
                preview = true, -- default null
            },
        },
    },
}
