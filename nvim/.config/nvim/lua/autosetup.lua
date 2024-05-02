local autocmd = vim.api.nvim_create_autocmd
local setup = vim.api.nvim_create_augroup('setup', { clear = true })

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = setup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd('InsertLeave', {
  group = setup,
  pattern = '*',
  command = 'set nopaste',
})

autocmd('BufWritePre', {
  group = setup,
  pattern = '*',
  command = [[%s/\s\+$//e]],
})

autocmd({ 'TermOpen', 'BufEnter' }, {
  group = setup,
  pattern = { '*' },
  callback = function()
    if vim.opt.buftype:get() == 'terminal' then
      vim.cmd ':startinsert'
      vim.opt.nu = false
      vim.opt.relativenumber = false
      vim.opt.scrolloff = 0
    end
  end,
})
