require("mason").setup({})

require("mason-lspconfig").setup({
	ensure_installed = {
		"rust_analyzer",
		"lua_ls",
		"pyright",
		"bashls",
		"ts_ls",
		"gopls",
		"clangd",
		"zls",
		"ols",
		"efm",
	},
	automatic_installation = true,
})
