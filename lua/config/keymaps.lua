-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("x", "<leader>p", '"_dP')

-- Copy relative file path and line number to clipboard
local function copy_file_location()
  local file_path = vim.fn.expand("%")
  local line_number = vim.fn.line(".")
  local location = file_path .. ":" .. line_number
  vim.fn.setreg('"', location)
  vim.fn.setreg("+", location)  -- Also copy to system clipboard
  print("Copied: " .. location)
end

vim.keymap.set("n", "<leader>rl", copy_file_location, { desc = "Copy relative file path and line number" })

-- Toggle inline diagnostics
local diagnostics_enabled = true
vim.keymap.set("n", "<leader>id", function()
  diagnostics_enabled = not diagnostics_enabled
  vim.diagnostic.config({
    virtual_text = diagnostics_enabled,
  })
end, { desc = "Toggle inline diagnostics" })
