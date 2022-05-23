require('settings')
require('mappings')
require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
]]
