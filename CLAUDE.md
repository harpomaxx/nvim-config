# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Neovim configuration using Lua, managed by the lazy.nvim plugin manager. The configuration is focused on Python and Lua development with LSP support, formatting, linting, and debugging capabilities.

## Architecture

The configuration follows a modular structure with entry point in `init.lua`:

- `init.lua` - Main entry point that loads all modules and sets colorscheme
- `lua/settings.lua` - Core Neovim settings (line numbers, indentation, etc.)
- `lua/plugins.lua` - Plugin definitions and lazy.nvim setup
- `lua/lsp.lua` - LSP configuration, autocompletion, and development tools
- `lua/keymaps.lua` - Custom key mappings
- `lazy-lock.json` - Plugin version lockfile

## Key Components

### Plugin Management
- Uses lazy.nvim for plugin management
- All plugins are defined in `lua/plugins.lua`
- Plugin versions are locked in `lazy-lock.json`

### LSP and Development
- Mason manages LSP servers (currently configured for Python with pyright)
- nvim-cmp provides autocompletion with LSP integration
- none-ls.nvim handles formatting (black) and linting (flake8) for Python
- nvim-dap configured for Python debugging with debugpy

### Language Support
- Primary focus on Python development
- Treesitter configured for Python and Lua syntax highlighting
- LSP completion with LuaSnip for snippets

### UI and UX
- Tokyo Night colorscheme
- Lualine statusline with theme integration
- Indent-blankline for visual indentation guides
- Gitsigns for Git integration with inline blame
- Web devicons for file type icons

## Common Operations

### Plugin Management
- `:Lazy` - Open lazy.nvim interface
- `:Lazy sync` - Update/install plugins
- `:Lazy clean` - Remove unused plugins

### LSP Operations
- `:Mason` - Open Mason LSP manager interface
- `:LspInfo` - Show LSP server status
- Language servers are auto-installed via mason-lspconfig

### Key Mappings (Leader: Space)
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>e` - Toggle file explorer (NvimTreeToggle - though plugin not installed)
- Git hunks: `]h` next, `[h` previous
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk  
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line

### Development Workflow
- Autocompletion works with Tab/Shift-Tab navigation
- Enter confirms completion
- Python files get automatic formatting with black and linting with flake8
- Debugging available through nvim-dap (F5 to start, breakpoints with F9)

## Configuration Notes

- Uses 4-space indentation consistently
- Relative line numbers enabled
- Sign column always visible for LSP diagnostics
- Terminal GUI colors enabled
- Current line blame enabled in Git repositories