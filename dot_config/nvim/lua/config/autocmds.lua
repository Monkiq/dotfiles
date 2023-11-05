-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function(event)
    if event.operator == "y" then
      vim.fn.OSCYankRegister('""')
    end
    if event.operator == "d" then
      vim.fn.OSCYankRegister('""')
    end
  end,
})
