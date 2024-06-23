require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    "tpope/vim-commentary",
    "mattn/emmet-vim",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "ellisonleao/gruvbox.nvim",
    "dracula/vim",
    "nvim-lualine/lualine.nvim",
    "nvim-treesitter/nvim-treesitter",
    "vim-test/vim-test",
    "lewis6991/gitsigns.nvim",
    "preservim/vimux",
    "christoomey/vim-tmux-navigator",
    "tpope/vim-fugitive",
    "tpope/vim-surround",
    "stevearc/oil.nvim",
    "nvim-lua/plenary.nvim",
    -- completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "github/copilot.vim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "folke/neodev.nvim",
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    {
        "vinnymeller/swagger-preview.nvim",
        run = "npm install -g swagger-ui-watcher",
    },
    {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
        },
    },
    "nvim-telescope/telescope-ui-select.nvim",
    {
        "nvim-java/nvim-java",
        dependencies = {
            "nvim-java/nvim-java-refactor",
            "nvim-java/lua-async-await",
            "nvim-java/nvim-java-core",
            "nvim-java/nvim-java-test",
            "nvim-java/nvim-java-dap",
            "MunifTanjim/nui.nvim",
            "mfussenegger/nvim-dap",
            {
                "williamboman/mason.nvim",
                opts = {
                    registries = {
                        "github:nvim-java/mason-registry",
                        "github:mason-org/mason-registry",
                    },
                },
            },
        },
    },
    {
        "goolord/alpha-nvim",
        event = "VimEnter", -- load plugin after all configuration is set
    },
    "Mofiqul/dracula.nvim",
    "ThePrimeagen/refactoring.nvim",
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
    },
    "nvimtools/none-ls.nvim",
    "HiPhish/rainbow-delimiters.nvim",
    {
        "altermo/ultimate-autopair.nvim",
        event = { "InsertEnter", "CmdlineEnter" },
        branch = "v0.6", --recommended as each new version will have breaking changes
        opts = {
            --Config goes here
        },
    },
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
    },
    {
        "mrcjkb/rustaceanvim",
        version = "^4", -- Recommended
        ft = { "rust" },
    },
})
