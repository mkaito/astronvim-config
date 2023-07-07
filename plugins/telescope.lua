return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require "telescope.actions"

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
      layout_strategy = "vertical",
      layout_config = {
        height = 0.85,
        width = 0.9,
      },
    })

    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      buffers = {
        mappings = {
          i = {
            ["<c-d>"] = actions.delete_buffer,
          },
        },
      },
    })

    return opts
  end,
}
