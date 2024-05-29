local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local mytype = augroup('mypython', { clear = true })

autocmd('BufEnter', {
  group = mytype,
  pattern = 'docker-compose.y*ml',
  callback = function()
    vim.bo.filetype = 'yaml.docker-compose'
  end,
})

autocmd('BufEnter', {
  group = mytype,
  pattern = {'m*.y*ml', "pb*.yml"},
  callback = function()
    vim.bo.filetype = 'yaml.ansible'
    vim.keymap.set('n', '<f5>', ':w<cr>:!ansible-playbook %<cr>')
  end,
})

autocmd('FileType', {
  group = mytype,
  pattern = 'go',
  callback = function()
    vim.keymap.set('n', '<f5>', ':w<cr>:!go run %<cr>')
  end,
})

autocmd('FileType', {
  group = mytype,
  pattern = 'sh',
  callback = function()
    vim.keymap.set('n', '<f5>', ':w<cr>:!bash %<cr>')
  end,
})

autocmd('FileType', {
  group = mytype,
  pattern = 'python',
  callback = function()
    vim.keymap.set({ 'n', 'i' }, '<f5>', '<esc>:w<cr>:!python3 %<cr>')
    vim.keymap.set({ 'n', 'i' }, '<f8>', '<esc>:w<cr>:!python3 % %:p:h/ex.txt<cr>')
    vim.keymap.set({ 'n', 'i' }, '<f9>', '<esc>:w<cr>:!python3 % %:p:h/input.txt<cr>')
  end,
})
