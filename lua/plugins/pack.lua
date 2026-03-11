vim.pack.add({
        "https://github.com/nvim-tree/nvim-tree.lua",
        "https://github.com/ibhagwan/fzf-lua",
        "https://github.com/nvim-mini/mini.nvim",
        "https://github.com/lewis6991/gitsigns.nvim",
        {
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
        "https://github.com/zenbones-theme/zenbones.nvim",
        "https://github.com/rktjmp/lush.nvim",
        "https://github.com/nyoom-engineering/oxocarbon.nvim",
        "https://github.com/folke/which-key.nvim",
        "https://github.com/goolord/alpha-nvim",

        	-- Language Server Protocols
	"https://www.github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/creativenull/efmls-configs-nvim",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("1.*"),
	},
	"https://github.com/L3MON4D3/LuaSnip",
})

