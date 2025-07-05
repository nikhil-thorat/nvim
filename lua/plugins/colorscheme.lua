return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "day", -- day, night, storm, moon
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },
    })
    vim.cmd.colorscheme("tokyonight-day")
  end,
}
