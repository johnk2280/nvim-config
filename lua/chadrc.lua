-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "darcula-dark",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
  -- tabufline = {
  -- lazyload = false
  -- },

  statusline = {
    theme = "vscode_colored",
  },
}

-- M.mason.pkgs = {
--   "css-lsp",
--   "debugpy",
--   "docker-compose-language-server",
--   "dockerfile-language-server",
--   "eslint_d",
--   "html-lsp",
--   "json-lsp",
--   "js-debug-adapter",
--   "lua-language-server",
--   "luacheck",
--   "postgrestools",
--   "prettierd",
--   "pyright",
--   "ruff",
--   "rust-analyzer",
--   "sql-formatter",
--   "stylua",
--   "typescript-language-server",
--   "yaml-language-server",
-- }

return M
