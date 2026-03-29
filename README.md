# leovim

Leo's macOS dev environment configs.

## What's included

- **Neovim Setuo** — a super minimal LazyVims etup with almost no extras
- **Ghostty Config** — Terminal theme and settings 

## Setup

```bash
git clone <repo-url> ~/dotfiles
~/dotfiles/install.sh
```

The install script symlinks configs into `~/.config/`. Existing configs are backed up with a `.bak` suffix before linking.

### AI Autocomplete (Minuet)

This config includes [Minuet](https://github.com/milanglacier/minuet-ai.nvim) for AI-powered completions via OpenRouter. To enable it, add your API key to your shell profile:

```bash
export OPENROUTER_API_KEY="your-key-here"
```

### Ghostty / Terminal Theme

The Ghostty config is purely cosmetic — it sets the [Kanagawa Dragon](https://github.com/rebelot/kanagawa.nvim) color scheme to match the Neovim theme. No keybindings or behavior changes.

## Terminal

I am in love with [cmux](https://cmux.com/) and I HIGHLY reccommend switching to this if you're currently using a multiplexer for multi-agent setups or you can no longer get the speed you want in vscode. I literally don't think it gets any better than this, it gives the polished and intuitive feel of an app like Safari with the speed and capability of your favorite terminal.

## Requirements

- [Neovim](https://neovim.io/) (>= 0.9)
- [Ghostty](https://ghostty.org/) or [cmux](https://cmux.com/)
