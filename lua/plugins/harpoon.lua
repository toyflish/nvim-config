return {
  "ThePrimeagen/harpoon",
  keys = {
    {
      "<leader>hh",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "harpoon quick menu",
    },
    {
      "<leader>hx",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "harpoon add file",
    },
    {
      "<leader>hn",
      function()
        require("harpoon.ui").nav_next()
      end,
      desc = "harpoon next file",
    },
    {
      "<leader>hp",
      function()
        require("harpoon.ui").nav_prev()
      end,
      desc = "harpoon next file",
    },
    {
      "<leader>ha",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "harpoon file 1",
    },
    {
      "<leader>hs",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "harpoon file 2",
    },
    {
      "<leader>hd",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "harpoon file 3",
    },
    {
      "<leader>hf",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "harpoon file 4",
    },
    {
      "<leader>hg",
      function()
        require("harpoon.ui").nav_file(5)
      end,
      desc = "harpoon file 5",
    },
    {
      "<leader>hc",
      function()
        require("harpoon.mark").clear_all()
      end,
      desc = "harpoon clear all",
    },
  },
  global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,

    -- enable tabline with harpoon marks
    tabline = false,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
  },
}
