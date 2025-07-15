# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Formatting
- `stylua .` - Format Lua code using stylua (config in stylua.toml)
- Configuration: 2 spaces indentation, 120 column width

### Plugin Management
- `:Lazy` - Open Lazy.nvim plugin manager
- `:Lazy sync` - Sync plugins (install/update/clean)
- `:Lazy update` - Update plugins
- `:Lazy clean` - Clean unused plugins

## Architecture

This is a LazyVim-based Neovim configuration that extends the LazyVim starter template.

### Core Structure
- `init.lua` - Entry point that bootstraps lazy.nvim and loads config
- `lua/config/` - Core configuration files
  - `lazy.lua` - Lazy.nvim setup and LazyVim extras configuration
  - `options.lua` - Neovim options overrides
  - `keymaps.lua` - Custom keymaps
  - `autocmds.lua` - Auto commands
- `lua/plugins/` - Custom plugin configurations that override/extend LazyVim defaults
- `lazyvim.json` - LazyVim extras configuration (installed extras and version tracking)
- `lazy-lock.json` - Plugin version lockfile

### LazyVim Extras Enabled
- AI: copilot, copilot-chat
- Languages: typescript, json, go, python, docker, markdown, toml
- Formatting: prettier
- Linting: eslint
- Coding: mini-surround
- UI: mini-animate
- Utilities: dot files, mini-hipatterns

### Key Plugin Customizations
- **Telescope**: Configured for nearly fullscreen layout (99.9% width/height)
- **Theme**: Uses onedark colorscheme with catppuccin and gruvbox alternatives
- **LSP**: Inlay hints disabled by default
- **Options**: Relative numbers disabled, updatetime set to 100ms

### Plugin Directory
Each `.lua` file in `lua/plugins/` represents a plugin configuration. Files ending in `.disabled` are inactive plugins. Key plugins include:
- `telescope.lua` - Fuzzy finder with fullscreen layout
- `theme.lua` - Colorscheme configuration
- `lsp.lua` - LSP server configurations
- `harpoon.lua` - File navigation
- `fugitive.lua` - Git integration
- `ale.lua` - Linting/fixing
- `vim-tmux-navigator.lua` - Tmux integration

### Configuration Patterns
- Most plugin configs use the standard LazyVim plugin spec format
- Overrides are done through `opts` functions or tables
- LazyVim defaults are extended rather than replaced where possible
- Custom keymaps follow LazyVim conventions with `<leader>` prefix