-- Aliases
local g = vim.g
local o = vim.opt

-- Basics
o.number = true
o.relativenumber = true
o.cursorline = true
o.mouse = "a"
o.smartindent = true
o.autoindent = true
o.scrolloff = 5
o.sidescrolloff = 10
o.shiftround = true
o.shiftwidth = 2
g.tabwidth = 2
o.softtabstop = 2
o.wildmenu = true
o.wildmode = "longest,list"
o.ttyfast = true
o.clipboard = "unnamedplus"
o.splitbelow = true
o.termguicolors = true
o.completeopt = "menuone,noselect,menu"
o.laststatus=2

-- Vim-Plug
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug 'mattn/emmet-vim'
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-telescope/telescope.nvim'
vim.call('plug#end')

-- Leader keys
g.mapleader = ","
g.user_emmet_leader_key = ","

-- Netrw configs
--g['netrw_liststyle'] = 3
--g['netrw_banner'] = 0
--g['netrw_browse_split'] = 4

-- Stuff I couldn't quite figure out how to do with lua
vim.cmd [[
	set nowrap
	au VimEnter * :tabnew +term
	au VimEnter * :tabn | wincmd p
]]
	--au VimEnter * :Vexplore
	--au VimEnter * :vertical resize 15
	--au VimEnter * :set winfixwidth
