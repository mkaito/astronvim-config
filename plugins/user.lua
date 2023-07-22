return {
  "gpanders/editorconfig.nvim",
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    event = "VeryLazy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    -- I don't know why this is necessary, but apparently it is.
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    event = "InsertEnter",
    opts = {
      keymaps = {
        visual = "s",
        normal = "s",
      },
    },
  },
  {
    "ethanholz/nvim-lastplace",
    lazy = false,
    opts = {
      lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
      lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
      lastplace_open_folds = true,
    },
  },
  {
    "klen/nvim-config-local",
    name = "config-local",
    lazy = false,
    opts = {
      config_files = { ".nvimrc.lua", ".nvimrc" },
      lookup_parents = true,
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    version = "*",
  },
  {
    "mihyaeru21/nvim-lspconfig-bundler",
    dependencies = { "neovim/nvim-lspconfig" },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "suketa/nvim-dap-ruby",
      name = "dap-ruby",
      opts = {},
    },
  },
}
