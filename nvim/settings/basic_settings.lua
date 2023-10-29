
-- Active relative number and number per line
local wo = vim.wo
wo.rnu = true
wo.nu = true

-- Tab setting
local bo = vim.bo
local TAB_SIZE = 4
bo.tabstop = TAB_SIZE
bo.softtabstop = TAB_SIZE
bo.shiftwidth = TAB_SIZE
bo.expandtab = true
