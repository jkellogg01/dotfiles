return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "javascript", "go" },
				auto_install = true,
			})
			vim.cmd("TSUpdate")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
}
