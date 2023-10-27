-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd_group = vim.api.nvim_create_augroup("custom", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.sql" },
  desc = "Auto-format SQL files after saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    local command = string.format(":silent !sqlfmt %s", vim.fn.shellescape(fileName))
    vim.cmd(command)
  end,
  group = autocmd_group,
})
