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
  {
    "williamboman/mason.nvim",
    -- cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    -- opts = function()
    --   return require "nvchad.configs.mason"
    -- end,
    ensure_installed = {
      "css-lsp",
      "debugpy",
      "docker-compose-language-server",
      "dockerfile-language-server",
      "eslint_d",
      "html-lsp",
      "js-debug-adapter",
      "lua-language-server",
      "luacheck",
      "postgrestools",
      "prettierd",
      "pyright",
      "ruff",
      "rust-analyzer",
      "sql-formatter",
      "stylua",
      "typescript-language-server",
      "yaml-language-server",
    },
  },
}
