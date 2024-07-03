return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        event = 'VeryLazy',
        init = function()
            vim.opt.cmdheight = 0
        end,
        opts = {},
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        init = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,
        opts = {
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 20,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        },
    }
}
