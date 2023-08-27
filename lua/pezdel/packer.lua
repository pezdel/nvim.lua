-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {"MaximilianLloyd/adjacent.nvim"}

    use {"AlexvZyl/nordic.nvim"}

    use({
        "luisiacc/gruvbox-baby",
        as = "gruvbox-baby"
    })
    use({'Tsuzat/NeoSolarized.nvim', as = "NeoSolarized"})
    use {"nyoom-engineering/oxocarbon.nvim"}

    use 'xiyaowong/nvim-transparent'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',}
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use {"folke/tokyonight.nvim"}
    use {"whatyouhide/vim-gotham"}
    use {"EdenEast/nightfox.nvim"}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}
    -- use {
    --   'nvim-tree/nvim-tree.lua',
    -- }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {"windwp/nvim-ts-autotag"}
    use {"RRethy/vim-illuminate"}
    -- use {"lukas-reineke/indent-blankline.nvim"}
    use {"numToStr/Comment.nvim"}
    use {'voidekh/kyotonight.vim'}
    use {"kyazdani42/blue-moon"}
    use {'Mofiqul/vscode.nvim'}
    use {"Alexis12119/nightly.nvim"}
    use 'ishan9299/nvim-solarized-lua'
    use 'eddyekofo94/gruvbox-flat.nvim'

    use {"sainnhe/everforest"}
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
            -- {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
end)
