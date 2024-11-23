return {
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = false,
      }
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "",
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = false,
      styles = {
        comments = { italic = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
