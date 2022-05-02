-- Aliases
local g = vim.g
local o = vim.opt

-- Basics
o.number = true
o.relativenumber = true
o.cursorline = true
o.mouse = a
o.smartindent = true
o.autoindent = true
o.scrolloff = 5
o.sidescrolloff = 10
o.shiftround = true
o.shiftwidth = 4
g.tabwidth = 4
o.softtabstop = 4
o.wildmenu = true
o.wildmode = longest
o.ttyfast = true
o.clipboard = "unnamedplus"
o.splitbelow = true
o.termguicolors = true
o.completeopt = "menuone,noselect,menu"

-- Vim-Plug
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('dracula/vim', {as = 'dracula'})
Plug 'mattn/emmet-vim'
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
vim.call('plug#end')

-- Leader keys
g.mapleader = ","
g.user_emmet_leader_key = ","

-- Stuff I couldn't quite figure out how to do with lua
vim.cmd [[
	set nowrap
	colorscheme dracula
	au VimEnter * :NERDTree
	au VimEnter * :vertical resize 15
	au VimEnter * :set winfixwidth
	au VimEnter * :tabnew +term
	au VimEnter * :tabn | wincmd p
]]
