-- The function I use for setting keymaps
function k(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then 
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- My keymaps

-- Short navigations
k('i', 'ii', '<esc>')
k('i', 'AA', '<esc>ha')
k('i', 'SS', '<esc>ja')
k('i', 'DD', '<esc>la')
k('i', 'WW', '<esc>ka')
k('i', 'jj', '<Down>') -- I know these keymappings are kinda wierd, but they work well for me
k('i', 'OO', '<esc>o')
-- Windows
k("n", "J", "<C-w><C-j>")
k("n", "K", "<C-w><C-k>")
k("n", "L", "<C-w><C-l>")
k("n", "H", "<C-w><C-h>")
-- Buffers and files
k('i', '<leader>ff', '<esc>:Telescope find_files<CR>')
k('i', '<leader>fb', '<esc>:Telescope buffers<CR>')
k('n', '<leader>ff', ':Telescope find_files<CR>')
k('n', '<leader>fb', ':Telescope buffers<CR>')
k('n', '<tab>', ':bn<CR>')
k('n', '<S-tab>', ':bp<CR>')
-- Escaping from terminal mode
k('t', '<esc>', '<C-\\><C-n>')

