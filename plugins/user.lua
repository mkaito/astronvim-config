return {
  "gpanders/editorconfig.nvim",
  "gbprod/nord.nvim",
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    event = "VeryLazy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    -- opts = {
    --   -- fun stuff goes here
    -- },
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
    "akinsho/git-conflict.nvim",
    lazy = false,
    version = "*",
    opts = {},
  },
  {
    "nyngwang/NeoZoom.lua",
    lazy = false,
    version = "*",
    opts = {},
  },
  {
    "mihyaeru21/nvim-lspconfig-bundler",
    dependencies = { "neovim/nvim-lspconfig" },
  },
}
