require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- Trancparency toggle
map(
    "n",
    "<leader>tt",
    ":lua require('base46').toggle_transparency()<CR>",
    { noremap = true, silent = true, desc = "Toggle Backgraund Trancparency" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Terminal
map("t", "jj", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map("t", "<ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- Code Actions
map({ "n", "v" }, "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Actions" })
