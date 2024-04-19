return {
	"nvim-telescope/telescope.nvim",

	branch = "0.1.x",

	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("telescope").setup({})
		require("telescope").load_extension("fzf")

		local builtin = require("telescope.builtin")
		vim.keymap.set(
			"n",
			"<leader>ff",
			builtin.find_files,
			{ desc = "Lists files in your current working directory" }
		)
		vim.keymap.set(
			"n",
			"<leader>lg",
			builtin.live_grep,
			{ desc = "Search for a string in your current working directory and get results live" }
		)
	end,
}
