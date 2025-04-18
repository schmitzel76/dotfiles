-- global configuration
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

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

-- spelling
vim.opt.spelllang = "en_us,nl_nl"

-- color scheme to use
vim.cmd.colorscheme("torte")

require("config.lazy")
