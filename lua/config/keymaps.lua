-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function set(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

set("n", "gl", "$", { silent = true, desc = "Go to the end of the line", noremap = true })
set("n", "gh", "0", { silent = true, desc = "Go to the start of the line", noremap = true })

set("n", "<leader>fN", "<cmd>:Telescope notify<cr>", { silent = true, desc = "Search notifications" })

-- Save all
set("n", "<C-S-s>", ":wa<cr>", { remap = true, desc = "Save all" })

-- Window navigation
set("n", "<leader>wl", "<leader>w|", { remap = true, desc = "Split window right" })
set("n", "<leader>wj", "<leader>w-", { remap = true, desc = "Split window below" })
-- set({ "n", "i", "v" }, "<C-k>", "<leader>fF", { remap = true, desc = "Find files (current directory)" })

-- Redo
set({ "n" }, "<S-u>", ":redo<cr>", { remap = true, silent = true, desc = "Redo" })

-- Duplicate
set({ "n" }, "<C-A-Down>", "Yp", { noremap = true, silent = true, desc = "Duplicate line" })
set({ "v" }, "<C-A-Down>", "Y`>p", { noremap = true, silent = true, desc = "Duplicate line" })

-- Replace in selection
set(
  { "x" },
  "<leader>jy",
  "<cmd>substitute(escape(@\", '/'), '\n', '\\n', 'g')<cr>\"_cgn",
  { noremap = true, silent = true, desc = "Replace in selection" }
)

-- Replace word under cursor
set({ "n" }, "<leader>j", "*Ncgn", { noremap = true, silent = true, desc = "Replace current line" })
set({ "n" }, "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", { noremap = true, silent = true, desc = "Rename variable" })

-- Spectre search and replace
set(
  "n",
  "<C-S-f>",
  "<cmd>lua require('spectre').open_file_search({})<CR>i",
  { remap = true, silent = true, desc = "Search in current buffer" }
)
-- Aerial
set("n", "<C-S-o>", "<cmd>AerialToggle!<CR>")

set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true, desc = "Window left" })
set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true, desc = "Window down" })
set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true, desc = "Window up" })
set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true, desc = "Window right" })

-- Substitute
set("n", "r", require("substitute").operator, { noremap = true })
set("n", "rr", require("substitute").line, { noremap = true })
set("n", "R", require("substitute").eol, { noremap = true })
set("x", "r", require("substitute").visual, { noremap = true })

vim.g.copilot_assume_mapped = true
