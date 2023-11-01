return {
  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      -- transparent_mode = true,
      contrast = "soft",
      styles = {
        sidebars = "transparent",
        float = "transparent",
      },
    },
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavor = "frappe",
        transparent_background = true,
        show_end_of_buffer = true,
      })
    end,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
      statementStyle = { bold = true },
      -- transparent = true,
    },
  },

  {
    "tiagovla/tokyodark.nvim",
    name = "tokyodark",
    opts = {
      transparent_background = true,
    },
  },

  {
    "dotsilas/darcubox-nvim",
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
