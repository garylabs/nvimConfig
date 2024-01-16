local M = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}

function M.config()
    local keys = vim.keymap.set
    local tree = require("neo-tree")

    keys('n', '<leader>e', ":Neotree toggle left<CR>", {})
end

return M
