-- Active relative number and number per line
local wo = vim.wo
wo.nu = true
wo.rnu = true

-- Leader key
vim.g.mapleader = " "

-- Tab settings
local bo = vim.bo
local TAB_SIZE = 2

bo.tabstop = TAB_SIZE
bo.shiftwidth = TAB_SIZE
bo.softtabstop = TAB_SIZE
bo.expandtab = true
bo.autoindent = true

-- Remove swap
vim.opt.backup = false
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.signcolumn = 'yes'
