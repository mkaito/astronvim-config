-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- Lua
        "lua_ls",

        -- Shell
        "bashls",

        -- Python
        "pylsp",
        "ruff_lsp",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- Prettier
        "prettierd",

        -- Lua
        "stylua",

        -- Python
        "black",
        "mypy",

        -- Shell
        "shellcheck",
        "shfmt",

        -- Nix
        "statix",
        "alejandra",
        "deadnix",

        -- Markdown
        "markdownlint",

        -- GH Actions
        "actionlint",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
