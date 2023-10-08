-- lazy.vim ibootstrap / ininitalization
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then vim.fn.system({ "git", "clone",
    "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
}) end

vim.opt.rtp:prepend(lazypath)

-- global configuration
vim.g.mapleader = " " vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Enable line number and realtive line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Set defaults for indent and tab stops to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- color scheme to use
vim.cmd.colorscheme("koehler")

-- Plugin installation
require("lazy").setup( {
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons", "nvim-treesitter/nvim-treesitter",
    { 'nvim-telescope/telescope.nvim', tag = '0.1.3', dependencies = {
        'nvim-lua/plenary.nvim' }
    },
    'tpope/vim-fugitive',

    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

    --- Use Mason to manage LSP servers from neovim
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- LSP Support
    { 'neovim/nvim-lspconfig', dependencies = { { 'hrsh7th/cmp-nvim-lsp' } } },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp', dependencies = { { 'L3MON4D3/LuaSnip'} } }
} )

