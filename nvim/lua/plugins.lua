vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'frazrepo/vim-rainbow'
    use 'mattn/emmet-vim'
    use { 'rmagatti/auto-session', config = function() require("auto-session").setup {
	      log_level = "error",
	      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
	    }
	  end
	}
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
    use 'tpope/vim-surround'
    --completion using COQ
    --
    -- use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
    -- use 'ms-jpq/coq.artifacts'
    -- use 'ms-jpq/coq.thirdparty'
    --
    --completion using CMP
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
    use {
          'glepnir/dashboard-nvim',
          event = 'VimEnter',
          config = function()
            require('dashboard').setup {
            }
          end,
          requires = {'nvim-tree/nvim-web-devicons'}
        }
    use 'nvim-lua/plenary.nvim'  -- basic dependency
    use 'j-morano/buffer_manager.nvim'
    -- use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
    use {
	  'gelguy/wilder.nvim',
	  config = function()
	  end,
	}
    use({
	  "jackMort/ChatGPT.nvim",
	    config = function()
	      require("chatgpt").setup({
		-- optional configuration
	      })
	    end,
	    requires = {
	      "MunifTanjim/nui.nvim",
	      "nvim-lua/plenary.nvim",
	      "nvim-telescope/telescope.nvim"
	    }
	})
    use 'sbdchd/neoformat'
    use {
	    'numToStr/Comment.nvim',
	    config = function()
		require('Comment').setup()
	    end
	}
     use 'karb94/neoscroll.nvim'
     use { "sitiom/nvim-numbertoggle" }
     use 'NvChad/nvim-colorizer.lua'
     use { "ellisonleao/gruvbox.nvim" }
     use "lukas-reineke/indent-blankline.nvim"
     use {
	  'lewis6991/gitsigns.nvim',
	  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	}
	-- Packer
     use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
     use 'mhartington/oceanic-next'
     use {'mg979/vim-visual-multi', branch = 'master'}
     use 'kdheepak/lazygit.nvim'
     use {
	  "folke/trouble.nvim",
	  requires = "nvim-tree/nvim-web-devicons",
	  config = function()
	    require("trouble").setup {
	      -- your configuration comes here
	      -- or leave it empty to use the default settings
	      -- refer to the configuration section below
	    }
	  end
	}
     use {
	  'phaazon/hop.nvim',
	  branch = 'v2', -- optional but strongly recommended
	  config = function()
	    -- you can configure Hop the way you like here; see :h hop-config
	    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	  end
	}
     use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
     -- use "m4xshen/smartcolumn.nvim"
end)
