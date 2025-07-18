return {
  -- Lazygit integration
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
      { "<leader>gf", "<cmd>LazyGitFilter<cr>", desc = "LazyGit Current File History" },
      { "<leader>gc", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit Current File" },
    },
    config = function()
      -- Configure lazygit floating window
      vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
      vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
      vim.g.lazygit_floating_window_corner_chars = { "╭", "╮", "╰", "╯" } -- customize corner characters
      vim.g.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
      vim.g.lazygit_use_neovim_remote = 1 -- for opening files from lazygit in the current neovim instance
    end,
  },
}