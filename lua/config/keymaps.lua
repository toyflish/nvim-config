-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("x", "<leader>p", '"_dP')

-- Toggle inline diagnostics
local diagnostics_enabled = true
vim.keymap.set("n", "<leader>id", function()
  diagnostics_enabled = not diagnostics_enabled
  vim.diagnostic.config({
    virtual_text = diagnostics_enabled,
  })
end, { desc = "Toggle inline diagnostics" })
