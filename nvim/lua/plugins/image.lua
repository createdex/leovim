return {
  "3rd/image.nvim",
  ft = { "markdown", "norg" },
  event = "BufReadPre *.png,*.jpg,*.jpeg,*.gif,*.webp,*.avif,*.bmp,*.ico,*.svg",
  opts = {
    backend = "kitty",
    processor = "magick_rock",
    integrations = {
      markdown = { enabled = true },
    },
    max_width = 100,
    max_height = 30,
    editor_only_render_when_focused = true,
    tmux_show_only_in_active_window = true,
  },
}
