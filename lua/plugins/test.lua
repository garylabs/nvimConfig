return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-neotest/neotest-python",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-python")({
                    args = { "--log-level", "DEBUG", "-s" },
                })
            }
        })
        vim.api.nvim_set_keymap('n', '<C-r>', '<Cmd>Neotest run<CR>', { noremap = true, silent = true })
    end

}
