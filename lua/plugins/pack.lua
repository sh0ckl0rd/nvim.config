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
})

