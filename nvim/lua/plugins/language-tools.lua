-- Enhanced language tools and configurations
return {
  -- Mason tool installer - ensure all important tools are available
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- JavaScript/TypeScript tools
        "typescript-language-server",
        "eslint-lsp",
        "prettier",
        
        -- Go tools
        "gopls",
        "goimports",
        "gofumpt",
        "golangci-lint",
        
        -- Python tools
        "pyright",
        "black",
        "isort",
        "flake8",
        "mypy",
        
        -- C/C++ tools
        "clangd",
        "clang-format",
        
        -- General tools
        "lua-language-server",
        "stylua",
        "shellcheck",
        "shfmt",
      })
    end,
  },

  -- Additional Treesitter parsers for better syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Core languages
        "javascript",
        "typescript",
        "tsx",
        "go",
        "python",
        "c",
        "cpp",
        "php",
        
        -- Config and markup languages
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "html",
        "css",
        "scss",
        
        -- Git
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
      })
    end,
  },

  -- Enhanced formatting configuration
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        go = { "goimports", "gofumpt" },
        python = { "isort", "black" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        lua = { "stylua" },
        sh = { "shfmt" },
        bash = { "shfmt" },
      })
    end,
  },

  -- Enhanced LSP configuration
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Ensure servers table exists
      opts.servers = opts.servers or {}
      
      -- Add additional LSP servers
      opts.servers.bashls = {} -- Bash Language Server
      opts.servers.jsonls = {} -- JSON Language Server
      opts.servers.yamlls = {} -- YAML Language Server
    end,
  },
}