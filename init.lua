-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local g = vim.g
local opt = vim.opt

g.mapleader = ","
-- nowrap
opt.wrap = false

opt.foldmethod = 'indent'
opt.foldlevel = 99

-- spacing
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- splitting
opt.splitbelow = false
opt.splitright = false
