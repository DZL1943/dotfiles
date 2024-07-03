return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "pyright",
                "rust_analyzer",
                -- "jdtls",
                -- "clangd",
                -- "bashls",
                -- "html",
                -- "cssls",
                -- "jsonls",
                -- "yamlls",
                "marksman",
                -- "sqls",
            },
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig['lua_ls'].setup({})
            lspconfig['pyright'].setup({})
            lspconfig['tsserver'].setup({})
            lspconfig['rust_analyzer'].setup({})
        end
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "luvit-meta/library", words = { "vim%.uv" } },
            },
        },
    },
    { "Bilal2453/luvit-meta",   lazy = true }, -- optional `vim.uv` typings
    -- { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall
    {
        'stevearc/conform.nvim',
        enabled = false,
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                python = { "isort", "black" },
                -- Use a sub-list to run only the first available formatter
                javascript = { { "prettierd", "prettier" } },
            },
        },
    },
    { "mfussenegger/nvim-lint", enabled = false },
    {
        'nvim-orgmode/orgmode',
        enabled = false,
        event = 'VeryLazy',
        ft = { 'org' },
        config = function()
            -- Setup orgmode
            require('orgmode').setup({
                org_agenda_files = '~/org/**/*',
                org_default_notes_file = '~/org/refile.org',
            })

            -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
            -- add ~org~ to ignore_install
            -- require('nvim-treesitter.configs').setup({
            --   ensure_installed = 'all',
            --   ignore_install = { 'org' },
            -- })
        end,
    },
}
