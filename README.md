# Neovim Configuration

A Neovim config using native Neovim features with Lua.

## Overview

```
lua/
├── config/
│   ├── options.lua    # Neovim settings
│   ├── keymaps.lua    # Keybindings
│   ├── autocmds.lua   # Auto commands
│   ├── statusline.lua # Custom statusline
│   ├── term.lua       # Terminal config
└── plugins/
    ├── pack.lua       # Plugin definitions
    ├── lsp.lua        # LSP & completion
    ├── mason.lua      # LSP installer
    ├── nvim-tree.lua  # File tree
    ├── fzf-lua.lua    # Fuzzy finder
    ├── mini.lua       # Mini.nvim modules
    ├── gitsigns.lua   # Git integration
    ├── treesitter-nvim.lua # Treesitter
    ├── alpha.lua      # Start screen
    └── harpoon.lua    # Quick file navigation
```

## Keybindings

All keybindings use `<Space>` as the leader key.

### General

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<Leader>c` | Clear search highlights |
| `<Leader>pa` | Copy full file path to clipboard |
| `<Leader>td` | Toggle diagnostics |
| `J` | Join lines (keep cursor position) |
| `n` / `N` | Next/Previous search (centered) |
| `<C-d>` / `<C-u>` | Half page down/up (centered) |
| `<Leader>"` | Wrap selection in quotes (visual) |

### Movement

| Key | Action |
|-----|--------|
| `j` / `k` | Down/Up (wrap-aware) |
| `<C-h/j/k/l>` | Navigate windows |
| `<A-j>` / `<A-k>` | Move line down/up |

### Buffers

| Key | Action |
|-----|--------|
| `<Leader>bn` | Next buffer |
| `<Leader>bp` | Previous buffer |

### Windows

| Key | Action |
|-----|--------|
| `<Leader>sv` | Vertical split |
| `<Leader>sh` | Horizontal split |
| `<C-Up/Down>` | Resize window height |
| `<C-Left/Right>` | Resize window width |

### Visual Mode

| Key | Action |
|-----|--------|
| `<Leader>p` | Paste without yanking |
| `<Leader>x` | Delete without yanking |
| `<` / `>` | Indent and reselect |
| `<A-j>` / `<A-k>` | Move selection down/up |

### File Tree

| Key | Action |
|-----|--------|
| `<Leader>e` | Toggle NvimTree |

### Harpoon

| Key | Action |
|-----|--------|
| `<Leader>ha` | Add file to harpoon |
| `<Leader>hm` | Toggle harpoon menu |
| `<Leader>h1-4` | Go to harpoon mark 1-4 |

### LSP (when LSP attached)

| Key | Action |
|-----|--------|
| `K` | Hover documentation |
| `<Leader>gd` | Go to definitions |
| `<Leader>gD` | Go to definition |
| `<Leader>gS` | Go to definition (split) |
| `<Leader>ca` | Code actions |
| `<Leader>rn` | Rename symbol |
| `<Leader>fd` | Go to declarations |
| `<Leader>fr` | Find references |
| `<Leader>ft` | Find type definitions |
| `<Leader>fs` | Document symbols |
| `<Leader>fw` | Workspace symbols |
| `<Leader>fi` | Find implementations |
| `<Leader>oi` | Organize imports |
| `<Leader>d` | Show cursor diagnostics |
| `<Leader>D` | Show line diagnostics |
| `<Leader>nd` | Next diagnostic |
| `<Leader>pd` | Previous diagnostic |
| `<Leader>q` | Open diagnostic list |

### Completion (Blink.cmp)

| Key | Action |
|-----|--------|
| `<C-Space>` | Show/hide completion |
| `<CR>` | Accept completion |
| `<C-j/k>` | Navigate completion |
| `<Tab>` | Snippet forward |
| `<S-Tab>` | Snippet backward |

## Plugins

| Plugin | Purpose |
|--------|---------|
| **nvim-tree.lua** | File explorer |
| **fzf-lua** | Fuzzy finder, LSP navigation |
| **mini.nvim** | Indent lines, comment, pairs |
| **gitsigns.nvim** | Git signs in gutter |
| **nvim-treesitter** | Syntax highlighting |
| **alpha-nvim** | Start screen |
| **mason.nvim** | LSP/DAP installer |
| **nvim-lspconfig** | LSP client |
| **blink.cmp** | Completion engine |
| **LuaSnip** | Snippets |
| **oxocarbon.nvim** | Theme |
| **harpoon** | Quick file navigation |

## Options Highlights

- **Line numbers**: Relative numbers enabled
- **Indentation**: 4 spaces, smart indent
- **Search**: Case-insensitive, incremental
- **Folding**: Treesitter-based expression folding
- **Undo**: Persistent undo in `~/.vim/undodir`

## Autocmds

- **Format on save**: Auto-formats Lua, Python, Go, JS/TS, JSON, HTML, CSS, Shell, C/C++ (only when EFM is attached)
- **Yank highlight**: Highlights yanked text
- **Cursor position**: Restores last cursor position
- **Markdown**: Wrap, linebreak, spellcheck for .md files

## Requirements

- Neovim 0.12+
- Nerd Fonts (for icons in statusline and tree)

## Customization

Edit the respective files in `lua/config/` or `lua/plugins/` to modify behavior. After changes, restart Neovim or run `:source ~/.config/nvim/init.lua`, or `:restart`.
