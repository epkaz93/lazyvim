return {
  require("plugins.themes.catppuccin"),
  require("plugins.themes.tokyonight"),
  require("plugins.themes.nord"),
  require("plugins.themes.nordic"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
