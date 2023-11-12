
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.get',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

 {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
  end,
},
{
    'orfosys/nvim-soil',
    lazy = true,
    ft = "plantuml",
    config = function()
        -- If you want to change default configurations
    end
},
  { 'nvim-lua/plenary.nvim' },
  { 'ThePrimeagen/harpoon'},
-- Optional for puml syntax highlighting:
{ 'orfosys/nvim-nyctophilia' },

  {
    "cuducos/yaml.nvim",
    ft = { "yaml" }, -- optional
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
    },
  },
  -- {'iamcco/markdown-preview.nvim'},
  {"lervag/vimtex",lazy=false},
  {"preservim/tagbar"},
  {},
  'rebelot/kanagawa.nvim',
  'edluffy/hologram.nvim',
  'nvim-treesitter/nvim-treesitter-refactor',
  'BurntSushi/ripgrep',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'ThePrimeagen/vim-be-good',
  'nvim-lua/plenary.nvim',
  'ThePrimeagen/harpoon',
  'christoomey/vim-tmux-navigator',
  'junegunn/fzf.vim',
  'folke/todo-comments.nvim',
  -- Lua
  {'edluffy/hologram.nvim'},
  -- {"folke/zen-mode.nvim",
  --   { "lukas-reineke/indent-blankline.nvim" },
  --   opts = {  }},
  "luukvbaal/nnn.nvim",
  'edluffy/hologram.nvim',
  {'goolord/alpha-nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}
    ,config = function ()
      require('alpha').setup(require('alpha.themes.startify').config)
    end
  },
  'rebelot/kanagawa.nvim',
  'vimwiki/vimwiki',

  { "rafamadriz/friendly-snippets" },

  {'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },},

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  ---------------------------------------
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },
  ---------------------------------------
  { -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'onedark'
      vim.cmd.colorscheme 'kanagawa'

    end,
  },
  -- { -- Add indentation guides even on blank lines
  --   'lukas-reineke/indent-blankline.nvim',
  --   opts = {
  --     char = '┊',
  --     show_trailing_blankline_indent = false,
  --   },
  -- },

  { 'folke/which-key.nvim', opts = {} },
  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        -- theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  { 'numToStr/Comment.nvim', opts = {} },
  ----------------------------------
  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },

  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },
  ----------------------------------
})
