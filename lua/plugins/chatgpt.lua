return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      -- this config assumes you have OPENAI_API_KEY environment variable set
      openai_params = {
        -- model = "gpt-4-1106-preview",
        model = "gpt-4o-2024-08-06",
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 12000,
        temperature = 0.2,
        top_p = 0.1,
        n = 1,
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
