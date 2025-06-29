return {
  'tpope/vim-surround',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'junegunn/vim-easy-align',
  'bluz71/vim-nightfly-guicolors',
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "catppuccin/nvim", as = "catppuccin" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
    options = {
      theme = "catppuccin"
    }
  },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
  'phaazon/hop.nvim',

  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',

  'williamboman/mason-lspconfig.nvim',
  {
    'stevearc/oil.nvim',
    config = function() require('oil').setup() end
  },
  -- auto complete tag
  'windwp/nvim-ts-autotag',

  -- for auto completion
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
  'L3MON4D3/LuaSnip', -- Snippets plugin
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

  {
    "echasnovski/mini.nvim",
    version = '*', -- use main branch for latest development, or remove for stable releases
  },
}
