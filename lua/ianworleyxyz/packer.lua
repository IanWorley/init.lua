vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- ddOnly required if you have packer configured as `opt`
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use 'marko-cerovac/material.nvim'


use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

use ('nvim-treesitter/playground')

use ('ThePrimeagen/harpoon')

use('mbbill/undotree')

use("tpope/vim-fugitive")



use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}

 use ('mfussenegger/nvim-dap')
 use {'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'}}
 use{'theHamsta/nvim-dap-virtual-text'}
 use{'nvim-telescope/telescope-dap.nvim'}
 use('jay-babu/mason-nvim-dap.nvim')
use ('mfussenegger/nvim-dap-python')

  use {'github/copilot.vim', branch = 'release' }
  use('wakatime/vim-wakatime')

  use('ThePrimeagen/vim-be-good')

use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.norg.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}

use('andweeb/presence.nvim')

end)
