-- Cut selected text in Visual mode and paste it before the cursor
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Usage: In Visual mode, press <leader>p

-- Yank (copy) selected text to system clipboard in Normal and Visual modes
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Usage: In Normal or Visual mode, press <leader>y

-- Yank (copy) entire line to system clipboard in Normal mode
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Usage: In Normal mode, press <leader>Y

-- Delete selected text without copying to any register in Normal and Visual modes
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- Usage: In Normal or Visual mode, press <leader>d

