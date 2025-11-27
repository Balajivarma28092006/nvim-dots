return {
  -- TokyoNight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- Transparency
      transparent = true,
      
      -- Style variants
      style = "storm", -- storm, night, moon, day
      
      -- UI customization
      dim_inactive = false,
      lualine_bold = true,
      
      -- Custom highlights
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      
      -- Color overrides
      on_colors = function(colors)
        colors.border = "#565f89"
        colors.hint = colors.orange
        colors.error = "#ff6c6b"
      end,
      
      -- Highlight overrides
      on_highlights = function(hl, colors)
        hl.TelescopeBorder = { fg = colors.border, bg = colors.bg }
        hl.WhichKeyFloat = { bg = colors.bg }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- Uncomment the line below to set as default theme
      -- vim.cmd.colorscheme("tokyonight")
      
      -- Force transparency after theme loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "tokyonight*",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
          vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
        end,
      })
    end,
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      -- Flavor selection
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      
      -- Transparency
      transparent_background = true,
      
      -- Integrations
      integrations = {
        mason = true,
        treesitter = true,
        treesitter_context = true,
        cmp = true,
        gitsigns = true,
        notify = true,
        mini = true,
        telescope = true,
        which_key = true,
        dashboard = true,
        neotree = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { italic = true },
            hints = { italic = true },
            warnings = { italic = true },
            information = { italic = true },
          },
          underlines = {
            errors = { underline = true },
            hints = { underline = true },
            warnings = { underline = true },
            information = { underline = true },
          },
        },
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
      },
      
      -- Custom highlights
      custom_highlights = function(colors)
        return {
          -- Enhance floating windows
          FloatBorder = { fg = colors.blue },
          NormalFloat = { bg = colors.mantle },
          
          -- Better cursor line
          CursorLine = { bg = colors.surface0 },
          
          -- Git enhancements
          GitSignsChange = { fg = colors.yellow },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- Uncomment the line below to set as default theme
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    opts = {
      -- Theme variants
      theme = "wave", -- wave, dragon, lotus
      
      -- Transparency
      transparent = true, -- kanagawa uses 'transparent' instead of 'transparent_background'
      
      -- Background configuration
      background = {
        dark = "wave",
        light = "lotus",
      },
      
      -- Color overrides
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      },
      
      -- Custom highlights
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- Transparent floating windows
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          
          -- Better visual selection
          Visual = { bg = theme.ui.bg_p1, fg = "none" },
          
          -- Enhanced diagnostics
          DiagnosticVirtualTextError = { bg = "none" },
          DiagnosticVirtualTextWarn = { bg = "none" },
          DiagnosticVirtualTextInfo = { bg = "none" },
          DiagnosticVirtualTextHint = { bg = "none" },
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      -- Uncomment the line below to set as default theme
      -- vim.cmd.colorscheme("kanagawa")
    end,
  },

  -- OneDark
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- Style variants
      style = "darker", -- dark, darker, cool, deep, warm, warmer, light
      
      -- Transparency
      transparent = true,
      
      -- UI customization
      term_colors = true,
      ending_tildes = false,
      
      -- Highlight configuration
      highlights = {
        -- Make comments more visible
        Comment = { fg = "#5c6370", italic = true },
        
        -- Floating window enhancements
        NormalFloat = { bg = "none" },
        FloatBorder = { fg = "#56b6c2", bg = "none" },
        
        -- Better cursor line
        CursorLine = { bg = "#2c323c" },
        
        -- Git improvements
        DiffAdd = { fg = "#98c379" },
        DiffChange = { fg = "#e5c07b" },
        DiffDelete = { fg = "#e06c75" },
      },
      
      -- Plugin-specific configurations
      diagnostics = {
        darker = true,
        undercurl = true,
      },
    },
    config = function(_, opts)
      require("onedark").setup(opts)
      -- Uncomment the line below to set as default theme
      -- vim.cmd.colorscheme("onedark")
    end,
  },

  -- Rose Pine (Beautiful pastel theme)
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "main", -- main, moon, dawn
      dark_variant = "main",
      bold_vert_split = false,
      dim_nc_background = false,
      disable_background = true,
      disable_float_background = true,
      disable_italics = false,
      
      groups = {
        background = "none",
        background_nc = "none",
        panel = "none",
        border = "muted",
        comment = "muted",
        
        -- Custom groups
        git_add = "love",
        git_change = "gold",
        git_delete = "pine",
      },
      
      highlight_groups = {
        -- Transparent groups
        ColorColumn = { bg = "none" },
        CursorLine = { bg = "highlight_med" },
        Visual = { bg = "highlight_high" },
        
        -- Border enhancements
        FloatBorder = { fg = "love" },
        
        -- Git enhancements
        GitSignsAdd = { fg = "love" },
        GitSignsChange = { fg = "gold" },
        GitSignsDelete = { fg = "pine" },
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      -- vim.cmd.colorscheme("rose-pine")
    end,
  },

  -- Gruvbox Material (Warm and cozy)
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Gruvbox Material uses global variables for configuration
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "medium"
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_show_eob = 0
      
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- Nightfox (Elegant and customizable)
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      options = {
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = "italic",
          conditionals = "italic",
          functions = "bold",
          keywords = "bold",
          strings = "NONE",
          variables = "NONE",
        },
        inverse = {
          match_paren = false,
          visual = false,
          search = false,
        },
      },
      
      palettes = {
        -- Custom color modifications
        nightfox = {
          bg1 = "#192330",
          sel0 = "#393b44",
        },
        nordfox = {
          bg1 = "#2e3440",
        },
      },
      
      groups = {
        all = {
          -- Transparent groups
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = "fg0" },
          
          -- Enhanced UI
          CursorLine = { bg = "sel0" },
          Visual = { bg = "sel0", style = "bold" },
        },
      },
    },
    config = function(_, opts)
      require("nightfox").setup(opts)
      -- vim.cmd.colorscheme("nightfox") -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
    end,
  },

  -- Onedarkpro (Professional and clean)
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      colors = {}, -- Override colors if needed
      highlights = {}, -- Override highlight groups
      styles = {
        strings = "NONE",
        comments = "italic",
        keywords = "bold",
        functions = "italic,bold",
        variables = "NONE",
        virtual_text = "NONE",
      },
      options = {
        cursorline = true,
        transparency = true,
        terminal_colors = true,
        highlight_inactive_windows = false,
      },
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
      -- vim.cmd.colorscheme("onedarkpro") -- onedark, onedark_vivid, onedark_dark, onelight
    end,
  },

  -- Theme switcher function
  {
    "stevearc/dressing.nvim",
    lazy = false,
    config = function()
      require("dressing").setup()
      
      -- Custom theme switcher function
      local themes = {
        "tokyonight",
        "catppuccin", 
        "kanagawa",
        "onedark",
        "rose-pine",
        "gruvbox-material",
        "nightfox",
        "onedarkpro"
      }
      
      vim.api.nvim_create_user_command("ThemeSwitch", function()
        vim.ui.select(themes, {
          prompt = "Select Theme:",
          format_item = function(item)
            return "🎨 " .. item
          end,
        }, function(choice)
          if choice then
            vim.cmd.colorscheme(choice)
            vim.notify("Theme switched to: " .. choice, vim.log.levels.INFO)
          end
        end)
      end, {})
    end,
  },

  -- Auto-set default theme on startup
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 999,
    config = function()
      -- Set your preferred default theme here
      vim.cmd.colorscheme("tokyonight")
      
      -- OR uncomment below for random theme on startup
      -- local themes = {"tokyonight", "catppuccin", "kanagawa", "onedark", "rose-pine", "nightfox"}
      -- vim.cmd.colorscheme(themes[math.random(#themes)])
    end,
  },
}