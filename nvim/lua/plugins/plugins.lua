vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'tamton-aquib/staline.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'windwp/nvim-autopairs'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'ray-x/lsp_signature.nvim'
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    use 'onsails/lspkind-nvim'
    use 'andweeb/presence.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons', -- optional, for file icons
            },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'voldikss/vim-floaterm'
end)

