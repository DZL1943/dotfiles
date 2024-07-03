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
            -- handlers = nil,
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local servers = { 'lua_ls', 'pyright', 'tsserver', 'rust_analyzer' }
            for _, server in ipairs(servers) do
                lspconfig[server].setup({
                    --   on_init = on_init,
                    --   on_attach = on_attach,
                    --   capabilities = capabilities,
                })
            end
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
        "scalameta/nvim-metals",
        enabled = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        ft = { "scala", "sbt", "java" },
        opts = function()
            local metals_config = require("metals").bare_config()
            metals_config.on_attach = function(client, bufnr)
                -- your on_attach function
            end

            return metals_config
        end,
        config = function(self, metals_config)
            local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
            vim.api.nvim_create_autocmd("FileType", {
                pattern = self.ft,
                callback = function()
                    require("metals").initialize_or_attach(metals_config)
                end,
                group = nvim_metals_group,
            })
        end
    },
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
