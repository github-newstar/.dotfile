return {
  "folke/tokyonight.nvim",
  lazy = false,
  enable = false,
  opts = function()
    local is_transparent = true
    local theme_style = "moon"
    return {
      style = theme_style,
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
      },
    }
  end,
}
