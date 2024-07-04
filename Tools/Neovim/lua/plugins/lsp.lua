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
}
