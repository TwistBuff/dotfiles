return {
	{
		"folke/tokyonight.nvim",
		-- 'marko-cerovac/material.nvim',

		lazy = false,
		name = "tokyonight",
		priority = 1000,
		opts = {},

		----config = function()
		----	vim.cmd([[colorscheme tokyonight]])
		----	--      vim.g.material_style = "deep ocean"
		----	--      require('material').set()
		----end,
	},

	{
		"marko-cerovac/material.nvim",
		lazy = false,
		name = "material",
		priority = 1000,
		opts = {
			style = "deep ocean",
			colored_cursor = false,
		},

		config = function()
			vim.cmd([[colorscheme material]])
		end,
	},
}
