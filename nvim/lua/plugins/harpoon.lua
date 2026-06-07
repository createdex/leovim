return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = function()
    local harpoon = require("harpoon")
    return {
      { "<leader>a", function() harpoon:list():add() end, desc = "Harpoon add file" },
      { "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Harpoon menu" },
      { "<C-h>", function() harpoon:list():select(1) end, desc = "Harpoon file 1" },
      { "<C-j>", function() harpoon:list():select(2) end, desc = "Harpoon file 2" },
      { "<C-k>", function() harpoon:list():select(3) end, desc = "Harpoon file 3" },
      { "<C-l>", function() harpoon:list():select(4) end, desc = "Harpoon file 4" },
      { "<leader>[", function() harpoon:list():prev() end, desc = "Harpoon prev" },
      { "<leader>]", function() harpoon:list():next() end, desc = "Harpoon next" },
    }
  end,
  config = function()
    require("harpoon"):setup()
  end,
}
