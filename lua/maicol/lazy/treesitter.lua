return {
	"nvim-treesitter/nvim-treesitter",

	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.configs").setup({
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "vim", "vimdoc", "lua", "luadoc", "go" },
				auto_install = true,
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
			}),
		})
	end,
}
