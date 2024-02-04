-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

   -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- Nodejs extension host for vim & neovim
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Vim plugin for Git.
  use 'tpope/vim-fugitive'
  
  -- Status/tabline for vim.
  use 'vim-airline/vim-airline' 
  use 'vim-airline/vim-airline-themes'

  -- A file system explorer for the vim.
  use 'preservim/nerdtree'

  -- Dim inactive windows
  use 'blueyed/vim-diminactive'

  -- Color Theme
  use 'folke/tokyonight.nvim'

  -- finder & live grep
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- tab/bar
  -- Must install https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-4-homebrew-fonts
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'romgrk/barbar.nvim'

  -- debuger
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'theHamsta/nvim-dap-virtual-text'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

end)
