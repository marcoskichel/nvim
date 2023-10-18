-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Recent files
vim.keymap.set("n", "<C-r>", "<leader>fb", { remap = true, desc = "Open recent buffers dialog" })

-- Search for first occurrence of word under cursor
vim.keymap.set("n", "<C-o>", "s", { remap = true, desc = "Search for first occurrence of word under cursor" })

-- Window navigation
vim.keymap.set("n", "<leader>wl", "<leader>w|", { remap = true, desc = "Split window right" })
vim.keymap.set("n", "<leader>wj", "<leader>w-", { remap = true, desc = "Split window below" })
vim.keymap.set({ "n", "i", "v" }, "<C-k>", "<leader>ff", { noremap = true, desc = "Find files (current directory)" })

-- Redo
vim.keymap.set({ "n" }, "y", ":redo<cr>", { noremap = true, silent = true, desc = "Redo" })
