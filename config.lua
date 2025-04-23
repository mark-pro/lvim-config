-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

require('terminals')
require('plugins')
require('search')
require('explorer')
require('lsp-keymaps')
require('lsp-servers')
require('keymaps')
require('harpoon-local')
require('telescope')
require('which-key')
require('theme')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 2
vim.o.colorcolumn = '80,120'

lvim.colorscheme = 'duskfox'
-- lvim.colorscheme = 'nightfox'

-- Disable locals module entirely
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.highlight.enable = false

-- vim.g.Illuminate_use_treesitter = 0
