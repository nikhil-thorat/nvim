return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
      "  ███████╗███████╗███╗   ██╗       ",
      "  ╚══███╔╝██╔════╝████╗  ██║       ",
      "    ███╔╝ █████╗  ██╔██╗ ██║       ",
      "   ███╔╝  ██╔══╝  ██║╚██╗██║       ",
      "  ███████╗███████╗██║ ╚████║       ",
      "  ╚══════╝╚══════╝╚═╝  ╚═══╝       ",
      "                                   ",
      "                                   ",
      "                                   ",
      "                                   ",
    }

    dashboard.section.buttons.val = {}

    dashboard.section.footer.val = {
      "",
      "Skill Issue!",
      "",
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
  end,
}
