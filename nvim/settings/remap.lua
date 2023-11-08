
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n','<C-s>','<Cmd>write<CR>', opts)
map('n','<C-q>','<Cmd>q!<CR>', opts)
map('n','<C-a>','<Cmd>NvimTreeToggle<CR>', opts)
