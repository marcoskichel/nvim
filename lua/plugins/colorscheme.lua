return {
  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
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
      transparent_mode = true,
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
        flavor = "mocha",
        transparent_background = true,
        show_end_of_buffer = true,
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "gruvbox",
      -- colorscheme = "catppuccin",
    },
  },
}
