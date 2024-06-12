local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-s>", "<Cmd>write<CR>", opts)
map("n", "<C-q>", "<Cmd>qall!<CR>", opts)
map('t',"<Esc>","[[<C-\\><C-n>]]",opts)

-- nvim-tree command
map("n", "<C-a>", "<Cmd>NvimTreeToggle<CR>", opts)
map("n", "<C-c>", "<Cmd>NvimTreeFindFile<CR>", opts)
map("n", "<C-z>", "<Cmd>NvimTreeFocus<CR>", opts)

-- Remap for buffer
map("n", "<A-n>", "<Cmd>BufferNext<CR>", opts)
map("n", "<A-p>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-w>", "<Cmd>BufferClose<CR>", opts)


map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- None ls command
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.format, {})

-- Trouble
local trouble = require("trouble")
vim.keymap.set("n", "<leader>xx", function() trouble.toggle() end)
vim.keymap.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() trouble.toggle("loclist") end)
vim.keymap.set("n", "<leader>xc", function() trouble.close() end)
vim.keymap.set("n", "gR", function() trouble.toggle("lsp_references") end)

-- lsp
vim.keymap.set("n", "<C-g>", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.hover() end)

-- refactoring
vim.keymap.set(
    {"n", "x"},
    "<leader>rr",
    function() require('refactoring').select_refactor() end
)

vim.keymap.set("x", "<leader>re", function() require('refactoring').refactor('Extract Function') end)
vim.keymap.set("x", "<leader>rf", function() require('refactoring').refactor('Extract Function To File') end)
-- Extract function supports only visual mode
vim.keymap.set("x", "<leader>rv", function() require('refactoring').refactor('Extract Variable') end)
-- Extract variable supports only visual mode
vim.keymap.set("n", "<leader>rI", function() require('refactoring').refactor('Inline Function') end)
-- Inline func supports only normal
vim.keymap.set({ "n", "x" }, "<leader>ri", function() require('refactoring').refactor('Inline Variable') end)
-- Inline var supports both normal and visual mode

vim.keymap.set("n", "<leader>rb", function() require('refactoring').refactor('Extract Block') end)
vim.keymap.set("n", "<leader>rbf", function() require('refactoring').refactor('Extract Block To File') end)
-- Extract block supports only normal mode
