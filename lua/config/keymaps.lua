-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Save all
vim.keymap.set("n", "<C-S-s>", ":wa<cr>", { remap = true, desc = "Save all" })

-- Window navigation
vim.keymap.set("n", "<leader>wl", "<leader>w|", { remap = true, desc = "Split window right" })
vim.keymap.set("n", "<leader>wj", "<leader>w-", { remap = true, desc = "Split window below" })
-- vim.keymap.set({ "n", "i", "v" }, "<C-k>", "<leader>fF", { remap = true, desc = "Find files (current directory)" })

-- Redo
vim.keymap.set({ "n" }, "<C-y>", ":redo<cr>", { noremap = true, silent = true, desc = "Redo" })

-- Duplicate
vim.keymap.set({ "n" }, "<C-A-Down>", "Yp", { noremap = true, silent = true, desc = "Duplicate line" })
vim.keymap.set({ "v" }, "<C-A-Down>", "Y`>p", { noremap = true, silent = true, desc = "Duplicate line" })

-- Replace in selection
vim.keymap.set(
  { "x" },
  "<leader>jy",
  "<cmd>substitute(escape(@\", '/'), '\n', '\\n', 'g')<cr>\"_cgn",
  { noremap = true, silent = true, desc = "Replace in selection" }
)

-- Replace word under cursor
vim.keymap.set({ "n" }, "<leader>j", "*cgn", { noremap = true, silent = true, desc = "Replace current line" })
vim.keymap.set(
  { "n" },
  "<F2>",
  "<cmd>lua vim.lsp.buf.rename()<cr>",
  { noremap = true, silent = true, desc = "Rename variable" }
)

-- Spectre search and replace
vim.keymap.set(
  "n",
  "<C-S-f>",
  "<cmd>lua require('spectre').open_file_search({})<CR>i",
  { remap = true, silent = true, desc = "Search in current buffer" }
)
-- Aerial
vim.keymap.set("n", "<C-S-o>", "<cmd>AerialToggle!<CR>")

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true, desc = "Window left" })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true, desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true, desc = "Window up" })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true, desc = "Window right" })

vim.g.copilot_assume_mapped = true
