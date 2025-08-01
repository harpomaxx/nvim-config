# Neovim Configuration

Personal Neovim configuration with LSP, autocompletion, and Python development tools.

## Installation

For a fresh Neovim installation:

1. **Clone the repository to the Neovim config directory:**
   ```bash
   git clone https://github.com/harpomaxx/nvim-config ~/.config/nvim
   ```

2. **Start Neovim:**
   ```bash
   nvim
   ```
   
3. **Wait for plugins to install automatically** - lazy.nvim will bootstrap itself and install all plugins on first run

4. **Install Python tools** (optional but recommended for full functionality):
   ```bash
   pip install black flake8 debugpy
   ```

The configuration will handle:
- Automatic lazy.nvim installation
- Plugin installation and setup
- LSP server installation (pyright) via Mason
- All necessary configurations