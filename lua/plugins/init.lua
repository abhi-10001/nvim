return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
}
use {'windwp/nvim-ts-autotag'}
use {'p00f/nvim-ts-rainbow'}
use {'windwp/nvim-autopairs'}
use {'folke/which-key.nvim'}
use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/plenary.nvim'}}
}
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'onsails/lspkind.nvim'
use 'norcalli/nvim-colorizer.lua'
use 'glepnir/dashboard-nvim'
use "lukas-reineke/indent-blankline.nvim"
use 'lukas-reineke/format.nvim'
use "akinsho/toggleterm.nvim"
use 'williamboman/nvim-lsp-installer'
use "terrortylor/nvim-comment"
use 'joshdick/onedark.vim'
use 'akinsho/flutter-tools.nvim'
use 'nvim-lua/plenary.nvim'

--Java
use 'mfussenegger/nvim-jdtls'


end)
