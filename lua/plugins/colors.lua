return {

  -- TokyoNight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- <-- enable transparency
      style = "night", -- storm / night / moon / day
      dim_inactive = false,
    },
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true, -- <-- enable transparency
      integrations = {
        mason = true,
        treesitter = true,
        cmp = true,
        gitsigns = true,
        notify = true,
        mini = true,
      },
    },
  },

  -- OneDark
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "darker",
      transparent = true, -- <-- enable transparency
    },
  },
}
