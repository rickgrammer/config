return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'tpope/vim-vinegar'
    use 'tpope/vim-fugitive'
    -- use 'psliwka/vim-smoothie'
    use 'junegunn/vim-easy-align'
    use 'pantharshit00/vim-prisma'

    use 'bluz71/vim-nightfly-guicolors'
    use { "ellisonleao/gruvbox.nvim" }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'neoclide/coc.nvim', branch = 'release'}
    use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', { run = 'make' }}
    use 'phaazon/hop.nvim'
    use 'mfussenegger/nvim-dap'
    -- use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'mhartington/formatter.nvim'

    -- use 'neovim/nvim-lspconfig'
    -- use 'elihunter173/dirbuf.nvim'

    use {
        "nvim-neorg/neorg",
        requires = "nvim-lua/plenary.nvim"
    }
    use 'suy/vim-context-commentstring'
    use {
      'stevearc/oil.nvim',
      config = function() require('oil').setup() end
    }
end)


