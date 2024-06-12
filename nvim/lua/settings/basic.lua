-- Active relative number and number per line
local wo = vim.wo
wo.nu = true
wo.rnu = true

-- Leader key
vim.g.mapleader = " "

-- Tab settings
local opt = vim.opt
local TAB_SIZE = 2

opt.tabstop = TAB_SIZE
opt.shiftwidth = TAB_SIZE
opt.softtabstop = TAB_SIZE
opt.expandtab = true
vim.bo.autoindent = true

-- Remove swap
vim.opt.backup = false
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.signcolumn = 'yes'
