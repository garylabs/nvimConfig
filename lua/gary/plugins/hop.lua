return {
	"smoka7/hop.nvim",
	version = "*",
	event = "InsertEnter",
	opts = {},
	config = function()
		local hop = require("hop")
		local directions = require("hop.hint").HintDirection
		require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		vim.keymap.set("", "f", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set("", "F", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
		end, { remap = true })
	end,
}
