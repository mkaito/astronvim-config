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
      b.formatting.black.with { prefer_local = ".venv/bin" },
      -- b.diagnostics.flake8.with { prefer_local = ".venv/bin" },
      -- b.diagnostics.mypy.with { prefer_local = ".venv/bin" },
      -- b.diagnostics.ruff.with { prefer_local = ".venv/bin" },
      -- b.formatting.ruff.with { prefer_local = ".venv/bin" },

      -- Nix
      b.formatting.alejandra,
      b.diagnostics.statix,
      b.diagnostics.deadnix,

      -- Ruby
      b.diagnostics.rubocop.with {
        condition = function(utils) return utils.root_has_file { "Gemfile" } end,
        command = "bundle",
        args = vim.list_extend({ "exec", "rubocop" }, b.diagnostics.rubocop._opts.args),
      },
      b.formatting.rubocop.with {
        condition = function(utils) return utils.root_has_file { "Gemfile" } end,
        command = "bundle",
        args = vim.list_extend({ "exec", "rubocop" }, b.formatting.rubocop._opts.args),
      },

      -- Shell
      b.diagnostics.shellcheck,
      b.formatting.shfmt.with { args = { "-i", "2" } },

      -- Markdown
      b.diagnostics.markdownlint,
    }
    return config -- return final config table
  end,
}
