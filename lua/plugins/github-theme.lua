return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        -- optional settings
        options = {
          transparent = false,
          terminal_colors = true,
        },
      })

      -- Choose your variant:
      -- github_dark, github_dark_default, github_light, github_dimmed, github_dark_colorblind, etc.
      vim.cmd("colorscheme github_dark")
    end,
  },
}
