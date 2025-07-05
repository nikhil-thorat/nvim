return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = " ",
        selection_caret = ">",
        path_display = { "truncate" },
        file_ignore_patterns = { ".git/", "node_modules" },
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            prompt_position = "bottom",
            mirror = false,
          },
          width = 0.40,
          height = 0.50,
        },
        sorting_strategy = "descending",
      },
      pickers = {
        find_files = {
          previewer = false,
        },
        live_grep = {
          previewer = false,
        },
        buffers = {
          previewer = false,
        },
        help_tags = {
          previewer = false,
        },
        oldfiles = {
          previewer = false,
        },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })

    vim.cmd([[
      hi TelescopeNormal guibg=NONE ctermbg=NONE
      hi TelescopeBorder guibg=NONE ctermbg=NONE
      hi TelescopePromptNormal guibg=NONE ctermbg=NONE
      hi TelescopePromptBorder guibg=NONE ctermbg=NONE
      hi TelescopeResultsNormal guibg=NONE ctermbg=NONE
      hi TelescopeResultsBorder guibg=NONE ctermbg=NONE
      hi TelescopePreviewNormal guibg=NONE ctermbg=NONE
      hi TelescopePreviewBorder guibg=NONE ctermbg=NONE
      ]])
  end,
}
