--local fn = vim.fn
local fn = vim.fn
--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  -- color schemes
	use 'Shatur/neovim-ayu'
  use { 'rose-pine/neovim', as = 'rose-pine' }

	-- indent line
	use 'lukas-reineke/indent-blankline.nvim'

  -- vim-iced for clojure
  use 'ctrlpvim/ctrlp.vim'
  use 'guns/vim-sexp'
  use 'liquidz/vim-iced'
  use 'prabirshrestha/asyncomplete.vim'
  use 'liquidz/vim-iced-asyncomplete'
  --use 'liquidz/vim-iced-coc-source'
  use 'hrsh7th/nvim-compe'
  use 'tami5/vim-iced-compe'


  use 'Olical/conjure'

  use 'tpope/vim-dispatch'
  use 'clojure-vim/vim-jack-in'
  use 'radenling/vim-dispatch-neovim'

  -- Linter use({ "jose-elias-alvarez/null-ls.nvim", config = function()
  --     require("null-ls").setup()
  --  end,
  --  requires = { "nvim-lua/plenary.nvim" },
  --})

  -- LSP
  --use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use {
    'lvimuser/lsp-inlayhints.nvim',
    config = function()
     require("lsp-inlayhints").setup()
    end
  }

  use 'folke/lsp-colors.nvim'
  use {
    'folke/trouble.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }
  use 'kkoomen/vim-doge'

    -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'f3fora/cmp-spell',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  use 'rafamadriz/friendly-snippets'
  -- use {'tzachar/cmp-tabnine',
  --      run='./install.sh',
  --      requires = 'hrsh7th/nvim-cmp'
  -- }
  use { 'onsails/lspkind-nvim' }

	-- autopair
  use 'm4xshen/autoclose.nvim'
--	use {
--		'windwp/nvim-autopairs',
--		config = function()
--		require('nvim-autopairs').setup()
--		end
--	}

---- icons
  use 'kyazdani42/nvim-web-devicons'
  use 'adelarsq/vim-devicons-emoji'
  
  -- file explorer
  --use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-neo-tree/neo-tree.nvim',
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"
      },
  }
  
  -- Sidebar
  use 'sidebar-nvim/sidebar.nvim'

  -- statusline
  -- use {
  --  'nvim-lualine/lualine.nvim',
 --  requires = { 'kyazdani42/nvim-web-devicons' , opt = true},
  -- }
  use('Iron-E/nvim-highlite')
  use {
    'feline-nvim/feline.nvim',
    requires = {
      'gitsigns.nvim',
      'nvim-web-devicons'
    },
  }

  -- cokeline - buffers
  use {
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- fuzzy finder
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'nvim-telescope/telescope-symbols.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'ibhagwan/fzf-lua'


  use 'junegunn/fzf'
  --use 'guns/vim-sexp'
   
  -- zettelkasten
  use 'jakewvincent/mkdnflow.nvim'

  -- git labels
  use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
      require('gitsigns').setup()
      end
  }      

  -- tagviewer
  use 'liuchengxu/vista.vim' 

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-tree-docs'
  use 'p00f/nvim-ts-rainbow'

    -- help for git
  use 'kdheepak/lazygit.nvim'
  -- diffview
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

    -- documentation
  use {
    "danymat/neogen",
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
  }

  use {
    "folke/todo-comments.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }
  
    -- autosave
  use "Pocco81/auto-save.nvim"

  -- terminal
  use "nyngwang/NeoTerm.lua"

    -- rest
  use {
    "NTBBloodbath/rest.nvim",
    requires = "nvim-lua/plenary.nvim",
  }

    -- just
  use 'NoahTheDuke/vim-just'
  use {
    'IndianBoy42/tree-sitter-just',
    config = function()
      require('tree-sitter-just').setup({})
    end
  }

  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'
  use 'rcarriga/nvim-dap-ui'

  -- Colorizer
  use 'alker0/chezmoi.vim'

  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup()
    end
  }

  use 'soywod/himalaya.vim'

  -- legendary
  use 'mrjones2014/legendary.nvim'
  -- workspaces
  use 'natecraddock/workspaces.nvim'
  use 'natecraddock/sessions.nvim'
  use 'cshuaimin/ssr.nvim'

  -- markdown-preview install without yarn or npm
  -- use({
  --  "iamcco/markdown-preview.nvim",
  --  run = function() vim.fn["mkdp#util#install"]() end,
  --})

  use({ 
    "iamcco/markdown-preview.nvim", run = "cd app && npm install", 
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
    ft = { "markdown" }, })

  -- glow markdown
  use {
    "ellisonleao/glow.nvim",
    config = function()
      require('glow').setup()
    end
  }

  -- Vimwiki
  --use 'vimwiki/vimwiki'
  --use {'chipsenkbeil/vimwiki-server.nvim'}
  use {
    'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_list = {
            {
                path = '~/vimwiki',
                syntax = 'markdown',
                ext = '.md',
            }
        }
        vim.g.vimwiki_global_ext = 0
        --vim.g.vimwiki_diary_months = {
        -- 1 = 'Enero',
        -- 2 = 'Febrero',
        -- 3 = 'Marzo',
       --  4 = 'Abril',
       --  5 = 'Mayo',
       --  6 = 'Junio',
       --  7 = 'Julio',
       --  8 = 'Agosto',
       --  9 = 'Septiembre',
       --  10 = 'Octubre',
       -- 11 = 'Noviembre',
       -- 12 = 'Diciembre',
       --} 
    end
  }

  -- Zen mode
use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
-- pandoc
use 'vim-pandoc/vim-pandoc'
use 'vim-pandoc/vim-pandoc-syntax'



  if packer_bootstrap then
    require('packer').sync()
  end
end)
