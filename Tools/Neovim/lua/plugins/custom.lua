return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			window = {
				width = 20,
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"tsserver",
				"pyright",
				-- "rust_analyzer",
				-- "jdtls",
				-- "clangd",
				-- "bashls",
				-- "html",
				-- "cssls",
				-- "jsonls",
				-- "yamlls",
				-- "marksman",
				-- "sqls",
			},
			-- handlers = nil,
		},
	},
}

