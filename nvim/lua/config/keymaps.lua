-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Copilot Chat Keymaps (AI / Agent)

-- Register <leader>a as "AI" group with icon
local wk = require("which-key")
wk.register({
  a = { name = "AI" }, -- Or just "AI" if you prefer
}, { prefix = "<leader>" })

vim.keymap.set("n", "<leader>ac", "<cmd>CopilotChat<cr>", { desc = "AI Chat (Copilot Chat)" })
vim.keymap.set("n", "<leader>ar", "<cmd>CopilotChatReset<cr>", { desc = "AI Chat Reset" })
vim.keymap.set("n", "<leader>ah", "<cmd>CopilotChatHelp<cr>", { desc = "AI Chat Help" })
vim.keymap.set("n", "<leader>ae", "<cmd>CopilotChatExplain<cr>", { desc = "AI Explain Code" })
vim.keymap.set("n", "<leader>as", "<cmd>CopilotChatSummarize<cr>", { desc = "AI Summarize" })
vim.keymap.set("v", "<leader>ac", ":CopilotChat<cr>", { desc = "AI Chat with Selection" })
