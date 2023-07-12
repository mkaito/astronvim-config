return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Colors
  { import = "astrocommunity.colorscheme.nightfox-nvim", enabled = false },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = false },
  { import = "astrocommunity.colorscheme.rose-pine", enabled = false },
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- Language packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.ruby" },
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
          dismiss = "<C/>",
        },
      },
    },
  },
}
