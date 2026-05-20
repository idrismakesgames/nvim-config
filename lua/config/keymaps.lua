-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Line navigation (not in LazyVim)
vim.keymap.set("n", "gh", "^", { desc = "Go to line start (first non-blank)" })
vim.keymap.set("n", "gl", "$", { desc = "Go to line end" })

-- Centered scrolling (not in LazyVim)
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })

-- Centered search navigation — extends LazyVim's n/N remaps.
-- LazyVim uses 'Nn'[v:searchforward] so n always goes forward regardless of search direction.
-- zv opens folds at the match (LazyVim), zz centres the screen (ours).
vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zvzz'", { expr = true, desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "'nN'[v:searchforward].'zvzz'", { expr = true, desc = "Prev search result (centered)" })

-- Paste over selection without overwriting the clipboard.
-- "_d deletes into the black hole register, P pastes before cursor.
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting clipboard" })
