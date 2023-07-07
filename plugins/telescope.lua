return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require "telescope.actions"

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      layout_strategy = "vertical",
      layout_config = {
        height = 0.85,
        width = 0.9,
      },
      mappings = {
        i = {
          ["<C-Space>"] = actions.to_fuzzy_refine,
        },
      },
    })

    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      buffers = {
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer,
          },
        },
      },
    })

    return opts
  end,
}
