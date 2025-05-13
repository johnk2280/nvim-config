require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Terminal
map("t", "jj", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map("t", "<ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
