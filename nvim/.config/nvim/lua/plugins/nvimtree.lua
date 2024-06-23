return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    vim.keymap.set('n', '<leader>et', '<cmd>NvimTreeToggle<cr>', { desc = 'Open parent directory' })

    local function my_on_attach(bufnr)
      local api = require 'nvim-tree.api'
      -- local function opts(desc)
      --   return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      -- end
      -- default mappings
      api.config.mappings.default_on_attach(bufnr)
      vim.keymap.del('n', 's', { buffer = bufnr })
    end
    require('nvim-tree').setup {
      on_attach = my_on_attach,
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
        custom = { '__pycache__' },
      },
    }
  end,
}
