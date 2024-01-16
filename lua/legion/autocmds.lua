local cmd = vim.api.nvim_create_autocmd
local group = vim.api.nvim_create_augroup

local legion_group = group("legion", {})
local highlight_group = group("YankHighlight", { clear = true })

cmd("TextYankPost", {
    group = hightlight_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            timeout = 40,
        })
    end,
})

cmd({ "BufWritePre" }, {
    group = legion_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

cmd({ "BufWritePre" }, {
    group = legion_group,
    pattern = "*",
    command = [[lua vim.lsp.buf.format()]],
})
