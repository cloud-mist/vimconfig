vim.cmd [[packadd packer.nvim]]

return require("packer").startup({
    function()
        use "wbthomason/packer.nvim"

        -- ============
        --   Beautify
        -- ============
        use "folke/tokyonight.nvim"
        use "projekt0n/github-nvim-theme"
        use "navarasu/onedark.nvim"

        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        use "lukas-reineke/indent-blankline.nvim"

        use "glepnir/dashboard-nvim"

        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use "p00f/nvim-ts-rainbow"

        --
        -- ============
        --   Complete
        -- ============
        --
        -- LSP
        use "neovim/nvim-lspconfig"
        use "williamboman/nvim-lsp-installer"

        -- use "tami5/lspsaga.nvim"
        use "j-hui/fidget.nvim"
        use "ray-x/lsp_signature.nvim"

        -- Cmp
        use "hrsh7th/nvim-cmp"

        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-cmdline"

        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-nvim-lua"

        use "onsails/lspkind-nvim"

        -- Snip
        use "L3MON4D3/LuaSnip"
        use "saadparwaiz1/cmp_luasnip"
        use "rafamadriz/friendly-snippets"

        -- Language
        use "rust-lang/rust.vim"
        use "lervag/vimtex"
        use "iamcco/markdown-preview.nvim"
        use "itchyny/vim-haskell-indent"
        --            use "fatih/vim-go"
        --            use "ekalinin/Dockerfile.vim"
        --            use "dag/vim-fish"
        --            use "wlangstroth/vim-racket"

        -- =========
        --   Tools
        -- =========
        use "jiangmiao/auto-pairs"
        -- use "tpope/vim-surround"
        use "gcmt/wildfire.vim"
        use "lewis6991/gitsigns.nvim"
        use "nvim-telescope/telescope.nvim"
        use "nvim-lua/plenary.nvim"

        use "numToStr/FTerm.nvim"
        use "sbdchd/neoformat"

        use "lewis6991/impatient.nvim" -- speed up loading lua mod
        use "nathom/filetype.nvim" -- speed up
        use "norcalli/nvim-colorizer.lua" -- css color
        use "numToStr/Comment.nvim"
        --
    end,
    config = {
        max_jobs = 8,
        git = {default_url_format = "https://github.com/%s"},
        display = {
            open_fn = function()
                return require("packer.util").float({border = "single"})
            end
        }
    }
})
