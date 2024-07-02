require("legion.options")
require("legion.remaps")
require("legion.autocmds")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { "rose-pine/neovim",     name = "rose-pine" },
        {
            "scottmckendry/cyberdream.nvim",
            name = "cyber",
            config = function()
                require("cyberdream").setup({
                    transparent = true
                })
                local cyberdream = require("lualine.themes.cyberdream") -- or require("lualine.themes.cyberdream-light") for the light variant
                require("lualine").setup({
                    -- ... other config
                    options = {
                        theme = "cyberdream",
                    },
                    -- ... other config
                })
            end
        },
        { "folke/which-key.nvim", lazy = true }, -- Add the which-key plugin here
        { import = "plugins" }
    },
    ui = {
        border = "rounded",
    },
    change_detection = {
        enabled = true,
        notify = false,
    },
})

vim.cmd.colorscheme "rose-pine"
