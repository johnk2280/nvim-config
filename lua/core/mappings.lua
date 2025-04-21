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

-- neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left reveal toggle<CR>')

-- bufferline
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
