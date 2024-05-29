vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<tab>', 'gt')
vim.keymap.set('n', '<s-tab>', 'gT')
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- vim.keymap.set('n', '<M-right>', 'gt')
-- vim.keymap.set('n', '<M-left>', 'gT')
-- vim.keymap.set('n', '<bs>', '<C-^>`"zz')
vim.keymap.set('n', '<leader>=', '<C-w>=', { desc = 'Resize all windows to be equal' })
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["_dP]], { desc = 'Paste and keep register content' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete and keep register content' })
vim.keymap.set({ 'n', 'v' }, '<leader>c', [["_c]], { desc = 'Change and keep register content' })
vim.keymap.set({ 'n', 'v' }, ';', ':')
vim.keymap.set('ia', 'ife', 'if err != nil {<CR>log.Fatal(err)<CR>}')

--  terminal setting
vim.keymap.set('t', 'jk', '<C-\\><C-n>')
vim.keymap.set('t', '<esc>', '<C-d><cr>')
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set('n', 'so', '<C-w>o')
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')
vim.keymap.set('n', 'tt', ':tab term<cr>')
vim.keymap.set('n', 'tx', ':term<cr>')
vim.keymap.set('n', 'tv', ':vert term<cr>')
vim.keymap.set('n', 'st', function()
  vim.cmd.new()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)
