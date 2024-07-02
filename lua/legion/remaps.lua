-- Cut selected text in Visual mode and paste it before the cursor
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Usage: In Visual mode, press <leader>p

-- Yank (copy) selected text to system clipboard in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<M-y>", [["+y]])
-- Usage: In Normal or Visual mode, press <leader>y

-- Past selected text from system clipboard in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<M-p>", [["+p]])
-- Usage: In Normal or Visual mode, press <leader>y

-- Yank (copy) entire line to system clipboard in Normal mode
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Usage: In Normal mode, press <leader>Y

-- Delete selected text without copying to any register in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
-- Usage: In Normal or Visual mode, press <leader>d

-- Split Horizantally
vim.keymap.set({ "n", "v" }, "<M-s>", "<C-W>s")
-- Split Vertically
vim.keymap.set({ "n", "v" }, "<M-S>", "<C-W>v")
-- Go to right pane
vim.keymap.set({ "n", "v" }, "<M-l>", "<C-W>l")
-- Go to left pane
vim.keymap.set({ "n", "v" }, "<M-h>", "<C-W>h")
