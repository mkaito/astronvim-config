return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local b = null_ls.builtins

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Lua
      b.formatting.stylua,

      -- Web stuff
      b.formatting.prettierd,

      -- Python
      -- b.formatting.isort.with {
      --   prefer_local = ".venv/bin",
      --   extra_args = { "--profile", "black" },
      -- },
      -- b.diagnostics.flake8.with { prefer_local = ".venv/bin" },
      b.formatting.black.with { prefer_local = ".venv/bin" },
      -- Ruff supersedes isort and flake8
      b.diagnostics.ruff.with { prefer_local = ".venv/bin" },
      b.formatting.ruff.with { prefer_local = ".venv/bin" },
      -- b.diagnostics.mypy,

      -- Nix
      b.formatting.alejandra,
      b.diagnostics.statix,
      b.diagnostics.deadnix,

      -- Shell
      b.diagnostics.shellcheck,
      b.formatting.shfmt.with { args = { "-i", "2" } },

      -- Markdown
      b.diagnostics.markdownlint,

      -- GitHub Actions
      b.diagnostics.actionlint,
    }
    return config -- return final config table
  end,
}
