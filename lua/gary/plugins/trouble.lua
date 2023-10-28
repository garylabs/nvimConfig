return {
	"folke/trouble.nvim",
	event = "InsertEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>xx",
			function()
				require("trouble").toggle()
			end,
			desc = "Toggle Trouble",
		},
		{
			"<leader>xf",
			function()
				require("trouble").toggle("document_diagnostics")
			end,
			desc = "Toggle Dcocument Trouble",
		},
	},
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
