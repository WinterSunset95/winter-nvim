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
k('i', '<M-a>', '<esc>ha')
k('i', '<M-s>', '<esc>ja')
k('i', '<M-d>', '<esc>la')
k('i', '<M-w>', '<esc>ka')
k('i', '<M-h>', '<left>')
k('i', '<M-j>', '<down>')
k('i', '<M-k>', '<up>')
k('i', '<M-l>', '<right>')
k('i', ';;', '<right>')
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
k('n', '<leader>nh', ':noh<CR>')
k('n', '<tab>', ':tabnext<CR>')
k('n', '<S-tab>', ':tabprevious<CR>')
k('n', '<S-t>', ':vsp +term | vertical resize 40 | set winfixwidth<CR>iipython<CR><C-\\><C-n><C-w>h')
-- Git
k('n', '<leader>gg', ':G<CR>')
k('n', '<leader>gp', ':G push<CR>')
k('n', '<leader>h', '<C-w>h')
k('n', '<leader>j', '<C-w>j')
k('n', '<leader>k', '<C-w>k')
k('n', '<leader>l', '<C-w>l')
k('n', '<F9>', 'yy<C-w>lpi<CR><CR><C-\\><C-n><C-f><C-w>hj')
k('v', '<F9>', 'y<C-w>lpi<CR><CR><C-\\><C-n><C-f><C-w>hj')
-- Escaping from terminal mode
k('t', '<esc>', '<C-\\><C-n>')

