return {
  {
    "dense-analysis/ale",
    init = function()
      vim.g.ale_fixers = {
        ruby = { "rubocop" },
        javascript = { "prettier" },
        css = { "prettier" },
        twig = { "prettier" },
        astro = { "prettier" },
      }
      vim.g.ale_fix_on_save = 1
    end,
  },
}
-- vim.g.ale_fixers = {
--   typescriptreact = { 'eslint' },
--   typescript = { 'eslint' },
--   javascript = { 'eslint' },
--   go = { 'gofmt' },
--   ruby = { 'rubocop' },
--   vue = { 'prettier' },
--   yaml = { 'prettier' },
--   json = { 'prettier' },
-- }
