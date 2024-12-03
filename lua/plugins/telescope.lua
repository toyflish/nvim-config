return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local telescope = require("telescope")
    local themes = require("telescope.themes")

    -- Override default options to use fullscreen layout
    opts.defaults = {
      -- layout_strategy = "center",
      layout_config = {
        width = 0.999, -- nearly full width
        height = 0.999, -- nearly full height
      },
      -- sorting_strategy = "ascending",
      -- prompt_prefix = "🔍 ",
      -- selection_caret = "➤ ",
    }

    telescope.setup(opts)
  end,
}
