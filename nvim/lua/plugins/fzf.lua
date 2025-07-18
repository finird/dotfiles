return {
  -- fzf-lua for better fzf integration
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({
        "telescope", -- Use telescope-like defaults
        winopts = {
          height = 0.85,
          width = 0.80,
          preview = {
            layout = "flex",
            flip_columns = 120,
          },
        },
        files = {
          prompt = "Files❯ ",
          multiprocess = true,
          git_icons = true,
          file_icons = true,
          color_icons = true,
        },
        grep = {
          prompt = "Rg❯ ",
          input_prompt = "Grep For❯ ",
          multiprocess = true,
          git_icons = true,
          file_icons = true,
          color_icons = true,
        },
      })
    end,
    keys = {
      { "<leader>zf", "<cmd>FzfLua files<cr>", desc = "Find Files (fzf)" },
      { "<leader>zg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep (fzf)" },
      { "<leader>zb", "<cmd>FzfLua buffers<cr>", desc = "Buffers (fzf)" },
      { "<leader>zh", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags (fzf)" },
      { "<leader>zr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent Files (fzf)" },
      { "<leader>zc", "<cmd>FzfLua commands<cr>", desc = "Commands (fzf)" },
      { "<leader>zk", "<cmd>FzfLua keymaps<cr>", desc = "Keymaps (fzf)" },
      { "<leader>zs", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Document Symbols (fzf)" },
      { "<leader>zw", "<cmd>FzfLua lsp_workspace_symbols<cr>", desc = "Workspace Symbols (fzf)" },
    },
  },
}