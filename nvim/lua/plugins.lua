return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'junegunn/vim-easy-align'
    use 'bluz71/vim-nightfly-guicolors'
    use { "ellisonleao/gruvbox.nvim" }
    use {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      options = {
        theme = "catppuccin"
      }
    }
    use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use 'phaazon/hop.nvim'

    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'

    use 'williamboman/mason-lspconfig.nvim'
    use {
        "nvim-neorg/neorg",
        requires = "nvim-lua/plenary.nvim"
    }
    use {
      'stevearc/oil.nvim',
      config = function() require('oil').setup() end
    }
    -- auto complete tag
    use 'windwp/nvim-ts-autotag'

    -- for auto completion
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
end)


