local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer manage itself
  use 'wbthomason/packer.nvim'

  -- Color schemes
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip'
    }
  }

  -- VScode-like pictograms
  use 'onsails/lspkind-nvim'

  -- Treesitter interface
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{
        disable_filetype = { 'TelescopePromt', 'vim' }
      }
    end
  }

  -- Autotag
  use {
    'windwp/nvim-ts-autotag',
    config = function ()
      require("nvim-autopairs").setup{}
    end
  }

  -- Highly extendable fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
     'nvim-lua/plenary.nvim'
    }
  }

  -- File browser extension for tetescope
  use "nvim-telescope/telescope-file-browser.nvim"

  -- A snazzy buffer lualine
  use {'akinsho/bufferline.nvim', tag = "v3.*"}

  -- A high-performance color highlighter
  use 'norcalli/nvim-colorizer.lua'

  -- Built-in lsp with a highly performant UI
  use { 
    'glepnir/lspsaga.nvim',
    branch = 'main'
  }

  -- Git integration for buffers
  use 'lewis6991/gitsigns.nvim'

  -- Simple clone of the plugin vim-fugitive
  use 'dinhhuy258/git.nvim'
end)
