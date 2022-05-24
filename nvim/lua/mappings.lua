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
k('i', '<S-M-a>', '<esc>ha')
k('i', '<S-M-s>', '<esc>ja')
k('i', '<S-M-d>', '<esc>la')
k('i', '<S-M-w>', '<esc>ka')
k('i', 'jj', '<esc>ja')
k('i', ';;', '<Right>')
k('i', 'OO', '<esc>o')
k('n', '<C-h>', '10h')
k('n', '<C-j>', '10j')
k('n', '<C-k>', '10k')
k('n', '<C-l>', '10l')
-- Windows
--k("n", "J", "<C-w><C-j>")
--k("n", "K", "<C-w><C-k>")
--k("n", "L", "<C-w><C-l>")
--k("n", "H", "<C-w><C-h>")
-- Buffers and files
k('i', '<leader>ff', '<esc>:Telescope find_files<CR>')
k('i', '<leader>fb', '<esc>:Telescope buffers<CR>')
k('n', '<leader>ff', ':Telescope find_files<CR>')
k('n', '<leader>fb', ':Telescope buffers<CR>')
k('n', '<tab>', ':bn<CR>')
k('n', '<S-tab>', ':bp<CR>')
-- Git
k('i', '<leader>gg', '<esc>:G<CR>')
k('n', '<leader>gg', ':G<CR>')
-- Escaping from terminal mode
k('t', '<esc>', '<C-\\><C-n>')

