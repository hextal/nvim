-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("filetype plugin indent on") -- required

vim.opt.termguicolors = true

-- Relative line numbering
vim.wo.relativenumber = true

-- Tabs and spaces
vim.o.smarttab = true
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true

-- Terminal title
vim.o.title = true

-- Searching
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.lazyredraw = false
vim.o.magic = true

-- Show matching braces
vim.o.showmatch = true
vim.o.matchtime = 2

-- Error bells
vim.o.errorbells = false
vim.o.visualbell = true
vim.o.t_vb = ""
vim.o.timeoutlen = 500

-- Set 256 color support explicitly
vim.o.t_Co = "256"

-- Wrap settings
vim.wo.wrap = true
vim.bo.wrapmargin = 8
vim.wo.linebreak = true
vim.o.showbreak = "…"

-- Indent settings
vim.bo.autoindent = true
vim.bo.smartindent = true

-- History settings
vim.o.history = 1000

-- Text width
vim.bo.textwidth = 120

-- Code folding settings
vim.wo.foldmethod = "syntax"
vim.wo.foldnestmax = 10
vim.wo.foldenable = false
vim.wo.foldlevel = 1

-- Mouse settings
vim.o.mouse = "c"

-- Enable persistent undo
--vim.o.undodir = "~/.config/nvim/undo"  -- Change this to a directory of your choice
--vim.o.undofile = true                  -- Turns on the feature

vim.o.clipboard = "unnamedplus"

-- Remove trailing whitespaces
vim.api.nvim_command("autocmd BufWritePre * :%s/\\s\\+$//e")

-- Disable Ex mode
vim.api.nvim_set_keymap("n", "Q", "<NOP>", { noremap = true })

-- Disable backup, writebackup and swapfile
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Copy yank to the global system clipboard
vim.o.clipboard = "unnamed"

-- Stop delays
vim.o.timeoutlen = 1000
vim.o.ttimeoutlen = 0

-- Toggle invisible characters
vim.o.list = true
vim.o.listchars = "tab:→\\ ,eol:¬,trail:⋅,extends:❯,precedes:❮"
vim.api.nvim_command("highlight SpecialKey ctermbg=none ctermfg=8") -- make the highlighting of tabs less annoying
vim.api.nvim_command("highlight NonText ctermbg=none ctermfg=8")
vim.o.showbreak = "↪"
