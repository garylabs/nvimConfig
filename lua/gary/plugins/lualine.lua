return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      extensions = { "nvim-tree", "quickfix", "fzf", "trouble", "fugitive", "toggleterm", "nvim-dap-ui" },
    })
  end,
}
