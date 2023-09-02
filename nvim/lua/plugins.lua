-- lua/plugins.lua
-- 管理插件
-- for ChenRP

-- 自动同步Packer
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require("packer").startup(function()
    -- Packer 插件管理
    use 'wbthomason/packer.nvim'

    -- 主题
    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }
    use 'folke/tokyonight.nvim'

    -- 文件树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    }

    -- buffer line
    use 'akinsho/bufferline.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep'
        }
    }

    -- lsp
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'onsails/lspkind-nvim',
    }

    use 'hrsh7th/nvim-cmp'                -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'            -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip'        -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip'                -- Snippets plugin
    use 'jose-elias-alvarez/null-ls.nvim' -- Formatter
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap'
    use 'sakhnik/nvim-gdb'

    -- color highlight
    use 'norcalli/nvim-colorizer.lua'
    use 'p00f/nvim-ts-rainbow'

    -- small tools
    use 'xiyaowong/transparent.nvim'
    use 'windwp/nvim-autopairs'
    use 'lewis6991/gitsigns.nvim'
    use 'voldikss/vim-floaterm'
end)
