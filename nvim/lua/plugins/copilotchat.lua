return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    "github/copilot.vim", -- required for Copilot Chat
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("CopilotChat").setup()
  end,
}
