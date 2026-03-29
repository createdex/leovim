# Neovim Config

LazyVim-based config — clone and go. Everything auto-installs on first launch.

## Prerequisites

```bash
brew install neovim ripgrep fd lazygit
```

Install a [Nerd Font](https://www.nerdfonts.com/) and set it in your terminal.

## Install

```bash
# Back up existing config if needed
mv ~/.config/nvim ~/.config/nvim.bak

# Clone
git clone <your-repo-url> ~/.config/nvim

# Set your OpenRouter API key (for AI autocomplete)
export OPENROUTER_API_KEY="your-key-here"

# Launch — plugins install automatically
nvim
```

## New Machine

```bash
git clone <your-repo-url> ~/.config/nvim
nvim
```

That's it. Lazy.nvim bootstraps itself, installs all plugins, and pins versions via `lazy-lock.json`.

## Keymap Cheatsheet

### Navigation

| Key | Action |
|-----|--------|
| `<leader><space>` | Find files (Cmd+P equivalent) |
| `<leader>/` | Live grep across files |
| `<leader>e` | Toggle file explorer |
| `<leader>,` | Switch buffer |
| `gd` | Go to definition |
| `gr` | Go to references |
| `K` | Hover docs |
| `s` + 2 chars | Flash jump |
| `<C-d>` / `<C-u>` | Scroll down/up (centered) |
| `n` / `N` | Next/prev search result (centered) |

### Harpoon

| Key | Action |
|-----|--------|
| `<leader>a` | Add file to harpoon |
| `<leader>h` | Toggle harpoon menu |
| `<leader>1`-`5` | Jump to harpooned file 1-5 |

### Editing

| Key | Mode | Action |
|-----|------|--------|
| `J` / `K` | Visual | Move selected lines down/up |
| `<leader>p` | Visual | Paste without losing clipboard |
| `<leader>d` | Normal/Visual | Delete without yanking |
| `gsa` | Normal | Surround add |
| `gsd` | Normal | Surround delete |
| `gsr` | Normal | Surround replace |
| `<leader>sa` | Normal | Swap argument with next |
| `<leader>sA` | Normal | Swap argument with previous |
| `af`/`if` | Operator | Outer/inner function |
| `ac`/`ic` | Operator | Outer/inner class |
| `aa`/`ia` | Operator | Outer/inner argument |

### Tools

| Key | Action |
|-----|--------|
| `<leader>gg` | Open lazygit |
| `<leader>ut` | Toggle undotree |
| `<C-s>` | Save file |

### AI Autocomplete (Minuet)

| Key | Action |
|-----|--------|
| `Alt+y` | Accept full suggestion |
| `Alt+l` | Accept one line |
| `Alt+n` | Accept N lines |
| `Alt+[` / `Alt+]` | Cycle prev/next suggestion |
| `Alt+e` | Dismiss suggestion |

## Customization

### Change AI Model

Edit `lua/plugins/minuet.lua` — change the `model` field:
- `anthropic/claude-sonnet-4` (default)
- `google/gemini-2.0-flash-001` (fast)
- `qwen/qwen-2.5-coder-32b-instruct` (code specialist)

### Change Theme Variant

Edit `lua/plugins/colorscheme.lua` — change `style`:
- `"dark"`, `"darker"`, `"cool"`, `"deep"` (current), `"warm"`, `"warmer"`

### Add a Language

Add a LazyVim extra in `lua/config/lazy.lua`:
```lua
{ import = "lazyvim.plugins.extras.lang.rust" },
```

See available extras: https://www.lazyvim.org/extras

## File Structure

```
~/.config/nvim/
├── init.lua
├── lazy-lock.json
├── lua/
│   ├── config/
│   │   ├── lazy.lua
│   │   ├── options.lua
│   │   ├── keymaps.lua
│   │   └── autocmds.lua
│   └── plugins/
│       ├── colorscheme.lua
│       ├── harpoon.lua
│       ├── undotree.lua
│       ├── minuet.lua
│       └── editor.lua
└── .gitignore
```
