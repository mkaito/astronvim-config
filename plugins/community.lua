return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Colors
  { import = "astrocommunity.colorscheme.catppuccin" },
  { "catppuccin", name = "catpuccin", lazy = false },

  { import = "astrocommunity.colorscheme.nord-nvim" },
  { "shaunsingh/nord.nvim", lazy = false },

  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { "folke/tokyonight.nvim", lazy = false },

  -- Language packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.lua" },

  -- Copilot
  { import = "astrocommunity.completion.copilot-lua" },
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C-/>",
        },
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 99,
      disabled_filetypes = { "help" },
    },
  },
}
