-- leader
vim.g.mapleader = " "

vim.keymap.set('i', 'jj', '<Esc>')

-- buffers
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')
