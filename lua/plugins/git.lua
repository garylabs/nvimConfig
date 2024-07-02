local M = { -- Git related plugins
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",  -- required
        "sindrets/diffview.nvim", -- optional - Diff integration

        'tpope/vim-rhubarb',
        -- Detect tabstop and shiftwidth automatically
        'tpope/vim-sleuth',
        'lewis6991/gitsigns.nvim',
    }
}

function M.config()
    local icons = require('legion.icons')
    local git = require("neogit")
    git.setup({
        vim.keymap.set('n', '<leader>go', function() git.open({ kind = "split" }) end)
    })
    require("gitsigns").setup {
        signcolumn = true,
        numhl = false,
        linehl = false,
        word_diff = false,
        watch_gitdir = {
            interval = 1000,
            follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
            delay = 1000,
            ignore_whitespace = false,
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        sign_priority = 6,
        status_formatter = nil,
        update_debounce = 200,
        max_file_length = 40000,
        preview_config = {
            border = "rounded",
            style = "minimal",
            relative = "cursor",
            row = 0,
            col = 1,
        },
        on_attach = function(bufnr)
            vim.keymap.set('n', '<leader>H', require('gitsigns').preview_hunk,
                { buffer = bufnr, desc = 'Preview git hunk' })

            vim.keymap.set('n', ']]', require('gitsigns').next_hunk,
                { buffer = bufnr, desc = 'Next git hunk' })

            vim.keymap.set('n', '[[', require('gitsigns').prev_hunk,
                { buffer = bufnr, desc = 'Previous git hunk' })
        end,
    }
end

return M
