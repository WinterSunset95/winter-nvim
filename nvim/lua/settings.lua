-- Aliases
local g = vim.g
local o = vim.opt

-- Basics
o.number = true
o.relativenumber = true
o.cursorline = true
o.mouse = "a"
--o.smartindent = true
--o.autoindent = true
o.scrolloff = 5
o.sidescrolloff = 10
o.shiftwidth = 2
g.tabwidth = 2
o.softtabstop = 2
o.ttyfast = true
o.clipboard = "unnamedplus"
o.splitbelow = true
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
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'dbeniamine/cheat.sh-vim'
vim.call('plug#end')

-- Tabline configs
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}

-- Lualine configs
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'hostname'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- Leader keys
g.mapleader = " "
g.user_emmet_leader_key = ","

-- Netrw configs
g['netrw_liststyle'] = 3
g['netrw_banner'] = 0
g['netrw_browse_split'] = 4

-- Stuff I couldn't quite figure out how to do with lua
vim.cmd [[
  syntax on
  set autoindent
  set smartindent
  set nowrap
  set wildmenu
  set wildmode=longest:full,full
  set completeopt=longest,menuone
  colorscheme mine
  au VimEnter * :tabnew +term
  au VimEnter * :tabn | wincmd p
]]
	--au VimEnter * :Vexplore
	--au VimEnter * :vertical resize 15
	--au VimEnter * :set winfixwidth
