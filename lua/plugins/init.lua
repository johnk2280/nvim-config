return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "csv",
                "dockerfile",
                "dot",
                "fsharp",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "htmldjango",
                "javascript",
                "json",
                "nginx",
                "python",
                "regex",
                "requirements",
                "rust",
                "scss",
                "sql",
                "toml",
                "tsv",
                "tsx",
                "typescript",
                "vue",
                "yaml",
            },
        },
    },
}
