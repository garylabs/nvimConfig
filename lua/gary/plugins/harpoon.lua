return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		keymap.set("n", "<leader>ha", mark.add_file, { desc = "Mark file with harpoon" })
		keymap.set("n", "<leader>hq", ui.toggle_quick_menu, { desc = "Toggle UI menu" })
		keymap.set("n", "<leader>hh", function()
			ui.nav_file(1)
		end, { desc = "Go to mark 1" })
		keymap.set("n", "<leader>hj", function()
			ui.nav_file(2)
		end, { desc = "Go to mark 2" })
		keymap.set("n", "<leader>hk", function()
			ui.nav_file(3)
		end, { desc = "Go to mark 3" })
		keymap.set("n", "<leader>hl", function()
			ui.nav_file(4)
		end, { desc = "Go to mark 4" })
	end,
}
