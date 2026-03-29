# Deleted Plugins Reference (2026-03-29)

Removed during clean rebuild. Add back one at a time to evaluate.

---

## 1. Harpoon 2 (lua/plugins/harpoon.lua)
- Plugin: `ThePrimeagen/harpoon` (branch: harpoon2)
- Dependencies: `nvim-lua/plenary.nvim`
- Keymaps:
  - `<leader>a` — add file to harpoon list
  - `<leader>h` — toggle quick menu
  - `<leader>1-5` — jump to harpooned file 1-5
- Options: save_on_toggle=true, sync_on_ui_close=true

## 2. Undotree (lua/plugins/undotree.lua)
- Plugin: `mbbill/undotree`
- Keymap: `<leader>ut` — toggle undotree
- Options: WindowLayout=2, SetFocusWhenToggle=1

## 3. Minuet AI (lua/plugins/minuet.lua)
- Plugin: `milanglacier/minuet-ai.nvim`
- Provider: OpenRouter (openai_compatible endpoint)
- Model: `anthropic/claude-sonnet-4`
- API key env var: `OPENROUTER_API_KEY`
- Virtualtext keymaps:
  - `<A-y>` accept, `<A-l>` accept line, `<A-n>` accept n lines
  - `<A-[>` prev, `<A-]>` next, `<A-e>` dismiss
- Auto-trigger filetypes: js, jsx, ts, tsx, python, lua, json, html, css, scss, markdown, yaml, toml, sh, bash
- Throttle: 2000ms, debounce: 500ms, timeout: 3s, max_tokens: 128

## 4. Colorscheme (lua/plugins/colorscheme.lua)
- Disabled: `folke/tokyonight.nvim`
- Installed: `oskarnurm/koda.nvim` (koda-dark)

## 5. Editor extras (lua/plugins/editor.lua)

### Treesitter text objects
- Plugin: `nvim-treesitter/nvim-treesitter-textobjects`
- Select: af/if (function), ac/ic (class), aa/ia (argument), ai/ii (conditional), al/il (loop)
- Move: ]f/[f (function), ]c/[c (class), ]a/[a (argument)
- Swap: `<leader>sa` swap arg next, `<leader>sA` swap arg prev

### mini.surround
- Plugin: `nvim-mini/mini.surround`
- Prefix: `gs` (gsa=add, gsd=delete, gsf=find, gsF=find_left, gsh=highlight, gsr=replace, gsn=update_n_lines)

### Telescope overrides
- Layout: horizontal, prompt on top, preview 50%, 90% width, 80% height
- Sorting: ascending
- Ignore: node_modules, .git/, dist/, build/, __pycache__, .lock

### Neo-tree overrides
- Show dotfiles, hide gitignored
- Width: 35
- Disabled `<space>` mapping in tree window

## 6. LazyVim extras (in lazy.lua)
- `lazyvim.plugins.extras.lang.typescript`
- `lazyvim.plugins.extras.lang.python`
- `lazyvim.plugins.extras.lang.json`
- `lazyvim.plugins.extras.lang.tailwind`
