return {
  -- PHP Language Server and tools
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- PHP Language Server (Intelephense)
        intelephense = {},
        -- Alternative: phpactor (uncomment if preferred)
        -- phpactor = {},
      },
    },
  },

  -- Treesitter for PHP
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "php",
        "phpdoc",
      })
    end,
  },

  -- Mason tool installer for PHP tools
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "intelephense",
        "php-cs-fixer", -- PHP formatter
        "phpstan", -- PHP static analysis
      },
    },
  },

  -- PHP specific formatting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" },
      },
    },
  },
}