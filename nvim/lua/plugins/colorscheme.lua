return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = function(colors)
        return {
          Normal = { bg = "#000000" },
          NormalNC = { bg = "#000000" },
          NormalFloat = { bg = "#000000" },
          FloatBorder = { bg = "#000000" },
          SignColumn = { bg = "#000000" },
          EndOfBuffer = { bg = "#000000" },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
