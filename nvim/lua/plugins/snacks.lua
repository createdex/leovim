-- Files that should never appear in the picker, even with hidden/ignored on.
-- Pure ephemera: vim swap files, macOS Finder metadata, Python bytecode.
local always_exclude = {
  "*.swp",
  "*.swo",
  "*.swn",
  ".DS_Store",
  "__pycache__",
  "*.pyc",
}

return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        exclude = always_exclude,
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            exclude = always_exclude,
            layout = { preset = "sidebar", layout = { position = "left" } },
          },
          files = {
            hidden = true,
            ignored = true,
            exclude = always_exclude,
          },
          grep = {
            hidden = true,
            ignored = true,
            exclude = always_exclude,
          },
        },
      },
    },
  },
}
