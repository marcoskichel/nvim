-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Recent files
vim.keymap.set("n", "<C-r>", "<leader>fb", { remap = true, desc = "Open recent buffers dialog" })

-- Window navigation
vim.keymap.set("n", "<leader>wl", "<leader>w|", { remap = true, desc = "Split window right" })
vim.keymap.set("n", "<leader>wj", "<leader>w-", { remap = true, desc = "Split window below" })
vim.keymap.set({ "n", "i", "v" }, "<C-k>", "<leader>ff", { remap = true, desc = "Find files (current directory)" })

-- Redo
vim.keymap.set({ "n" }, "<C-y>", ":redo<cr>", { noremap = true, silent = true, desc = "Redo" })

-- Select content
vim.keymap.set({ "n", "i" }, "<C-a>", "<esc>ggVG<cr>", { noremap = true, silent = true, desc = "Select all content" })

-- Duplicate
vim.keymap.set({ "n" }, "<C-A-Down>", "Yp", { noremap = true, silent = true, desc = "Duplicate line" })
vim.keymap.set({ "v" }, "<C-A-Down>", "Y`>p", { noremap = true, silent = true, desc = "Duplicate line" })

--Delete content
vim.keymap.set({ "n" }, "<C-d>", "dd", { remap = true, silent = true, desc = "Delete current line" })

-- Spectre search and replace
vim.keymap.set(
  "n",
  "<C-f>",
  "<cmd>lua require('spectre').open_file_search({})<CR>i",
  { remap = true, silent = true, desc = "Search in current buffer" }
)

-- Replace find with leap
vim.keymap.set("n", "f", "s", { remap = true, desc = "Leap" })
