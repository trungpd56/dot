return {
  'christoomey/vim-sort-motion',
  'christoomey/vim-titlecase',
  'christoomey/vim-tmux-navigator',
  'kristijanhusak/vim-dadbod-completion',
  'rhysd/clever-f.vim',
  'kristijanhusak/vim-dadbod-ui',
  'michaeljsmith/vim-indent-object',
  -- 'mkitt/tabline.vim',
  'nelstrom/vim-visual-star-search',
  {
    'chentoast/marks.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  'romainl/vim-cool',
  'romainl/vim-qf',
  'tpope/vim-dadbod',
  'tpope/vim-sleuth',
  'tpope/vim-eunuch',
  'tpope/vim-repeat',
  'tpope/vim-rsi',
  'tpope/vim-surround',
  -- 'tpope/vim-unimpaired',
  -- 'vim-scripts/ReplaceWithRegister',
  -- {
  --   'vim-scripts/ReplaceWithRegister',
  --   keys = {
  --     { '<leader>r', '<Plug>ReplaceWithRegisterOperator', desc = 'ReplaceWithRegisterOperator' },
  --   },
  -- },
  'wellle/targets.vim',
  {
    'kawre/leetcode.nvim',
    build = ':TSUpdate html', -- if you have `nvim-treesitter` installed
    dependencies = {
      'nvim-telescope/telescope.nvim',
      -- "ibhagwan/fzf-lua",
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      -- configuration goes here
      lang = 'python3',
      injector = { ['python3'] = { before = true } },

    },
  },

  { 'numToStr/Comment.nvim', opts = {} },
  {
    'svban/YankAssassin.nvim',
    config = function()
      require('YankAssassin').setup {
        auto_normal = true, -- if true, autocmds are used. Whenever y is used in normal mode, the cursor doesn't move to start
        auto_visual = true, -- if true, autocmds are used. Whenever y is used in visual mode, the cursor doesn't move to start
      }
    end,
  },
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
  -- {
  --   'nvim-tree/nvim-tree.lua',
  --   config = function()
  --     vim.keymap.set('n', '<leader>et', '<cmd>NvimTreeToggle<cr>', { desc = 'Open parent directory' })
  --
  --     local function my_on_attach(bufnr)
  --       local api = require 'nvim-tree.api'
  --       -- local function opts(desc)
  --       --   return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  --       -- end
  --       -- default mappings
  --       api.config.mappings.default_on_attach(bufnr)
  --       vim.keymap.del('n', 's', { buffer = bufnr })
  --     end
  --     require('nvim-tree').setup {
  --       on_attach = my_on_attach,
  --       sort = {
  --         sorter = 'case_sensitive',
  --       },
  --       view = {
  --         width = 30,
  --       },
  --       renderer = {
  --         group_empty = true,
  --       },
  --       filters = {
  --         dotfiles = true,
  --         custom = { '__pycache__' },
  --       },
  --     }
  --   end,
  -- },
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
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.tabline').setup()
      require('mini.bracketed').setup()
      require('mini.ai').setup { n_lines = 500 }
      -- require('mini.surround').setup({
      --   mappings = {
      --     highlight = '', -- Highlight surrounding
      --   },
      -- })
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end
    end,
  },
}
