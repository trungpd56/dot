return {
  'christoomey/vim-sort-motion',
  'christoomey/vim-titlecase',
  'christoomey/vim-tmux-navigator',
  'kristijanhusak/vim-dadbod-completion',
  'rhysd/clever-f.vim',
  'kristijanhusak/vim-dadbod-ui',
  'michaeljsmith/vim-indent-object',
  'mkitt/tabline.vim',
  'nelstrom/vim-visual-star-search',
  'romainl/vim-cool',
  'romainl/vim-qf',
  'tpope/vim-dadbod',
  'tpope/vim-eunuch',
  'tpope/vim-repeat',
  'tpope/vim-rsi',
  'tpope/vim-surround',
  'tpope/vim-unimpaired',
  'vim-scripts/ReplaceWithRegister',
  'wellle/targets.vim',
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'kanagawa'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      scope = { enabled = false },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        skip_confirm_for_simple_edits = true,
        keymaps = {
          ['<C-v>'] = 'actions.select_vsplit',
          ['<C-x>'] = 'actions.select_split',
          ['<C-t>'] = 'actions.select_tab',
          ['~'] = 'actions.cd',
          ['`'] = 'actions.tcd',
        },
        view_options = {
          show_hidden = true,
        },
      }
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
  -- {
  --   'windwp/nvim-autopairs',
  --   -- Optional dependency
  --   dependencies = { 'hrsh7th/nvim-cmp' },
  --   config = function()
  --     require('nvim-autopairs').setup {
  --       disable_filetype = { 'TelescopePrompt', 'vim', 'python', 'yaml' },
  --     }
  --     -- If you want to automatically add `(` after selecting a function or method
  --     local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
  --     local cmp = require 'cmp'
  --     cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  --   end,
  -- },
  -- {
  --   'okuuva/auto-save.nvim',
  --   cmd = 'ASToggle', -- optional for lazy loading on command
  --   event = { 'InsertLeave', 'TextChanged' }, -- optional for lazy loading on trigger events
  --   opts = {
  --     enabled = false,
  --   },
  -- },
  -- {
  --   'folke/which-key.nvim',
  --   event = 'VimEnter',
  --   config = function()
  --     require('which-key').setup()
  --     require('which-key').register {
  --       ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
  --       ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  --       ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
  --       ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  --       ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
  --     }
  --   end,
  -- },
  -- { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  -- {
  --   'echasnovski/mini.nvim',
  --   config = function()
  --     require('mini.ai').setup { n_lines = 500 }
  --     -- require('mini.surround').setup({
  --     --   mappings = {
  --     --     highlight = '', -- Highlight surrounding
  --     --   },
  --     -- })
  --     local statusline = require 'mini.statusline'
  --     statusline.setup { use_icons = vim.g.have_nerd_font }
  --
  --     -- You can configure sections in the statusline by overriding their
  --     -- default behavior. For example, here we set the section for
  --     -- cursor location to LINE:COLUMN
  --     ---@diagnostic disable-next-line: duplicate-set-field
  --     statusline.section_location = function()
  --       return '%2l:%-2v'
  --     end
  --   end,
  -- },
}
