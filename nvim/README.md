# 💤 LazyVim Configuration

A comprehensive LazyVim configuration with enhanced language support, debugging, and developer tools.

## Language Support

This configuration includes comprehensive support for:

- **JavaScript/TypeScript** - ESLint, Prettier, TypeScript LSP, Node.js debugging
- **Go** - gopls, goimports, gofumpt, golangci-lint, delve debugger
- **PHP** - Intelephense LSP, php-cs-fixer, phpstan static analysis
- **Python** - Pyright, Black formatter, isort, flake8, mypy, debugpy debugger
- **C/C++** - clangd LSP, clang-format, codelldb debugger

## Key Features

### 🔍 Enhanced Search with fzf
- **fzf-lua integration** with intuitive keybindings
- Use `<leader>z` prefix for all fzf operations:
  - `<leader>zf` - Find files
  - `<leader>zg` - Live grep
  - `<leader>zb` - Buffers
  - `<leader>zh` - Help tags
  - `<leader>zr` - Recent files
  - `<leader>zc` - Commands
  - `<leader>zk` - Keymaps
  - `<leader>zs` - Document symbols
  - `<leader>zw` - Workspace symbols

### 🐙 Git Integration with lazygit
- **lazygit integration** for powerful git operations
- Use `<leader>g` prefix for git operations:
  - `<leader>gg` - Open LazyGit
  - `<leader>gf` - LazyGit file history filter
  - `<leader>gc` - LazyGit current file

### 🐛 Debugging Support
- **Full DAP (Debug Adapter Protocol)** setup for all languages
- Use `<leader>d` prefix for debugging:
  - `<leader>db` - Toggle breakpoint
  - `<leader>dc` - Continue execution
  - `<leader>di` - Step into
  - `<leader>do` - Step over
  - `<leader>dO` - Step out
  - `<leader>dr` - Toggle REPL
  - `<leader>dl` - Run last configuration
  - `<leader>du` - Toggle DAP UI

## Installation

1. Install [Neovim](https://neovim.io/) (v0.9.0 or later)
2. Install required external tools:
   ```bash
   # For lazygit
   brew install lazygit  # macOS
   # or
   sudo apt install lazygit  # Ubuntu/Debian
   
   # For fzf
   brew install fzf  # macOS
   # or
   sudo apt install fzf  # Ubuntu/Debian
   ```

3. Start Neovim and let LazyVim install all plugins:
   ```bash
   nvim
   ```

## File Structure

```
nvim/
├── lua/
│   ├── config/          # Core LazyVim configuration
│   └── plugins/         # Custom plugin configurations
│       ├── colorscheme.lua      # Catppuccin theme
│       ├── copilotchat.lua      # GitHub Copilot Chat
│       ├── debugging.lua        # DAP debugging setup
│       ├── fzf.lua             # fzf-lua integration
│       ├── language-tools.lua   # Enhanced language tools
│       ├── lazygit.lua         # lazygit integration
│       └── php.lua             # PHP language support
├── lazyvim.json         # LazyVim extras configuration
└── init.lua            # Main entry point
```

## LazyVim Extras Enabled

The following LazyVim extras are automatically enabled:
- `lazyvim.plugins.extras.lang.typescript` - JavaScript/TypeScript support
- `lazyvim.plugins.extras.lang.go` - Go language support
- `lazyvim.plugins.extras.lang.python` - Python language support
- `lazyvim.plugins.extras.lang.clangd` - C/C++ language support

## Customization

To customize this configuration:
1. Edit files in `lua/plugins/` to modify plugin configurations
2. Add new plugins by creating new files in `lua/plugins/`
3. Modify `lazyvim.json` to enable/disable LazyVim extras

Refer to the [LazyVim documentation](https://lazyvim.github.io/) for more details.
