return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.formatting.stylelint, -- css, scss, less, sass
      null_ls.builtins.formatting.golines, -- golang
      null_ls.builtins.formatting.tidy, -- html
      null_ls.builtins.formatting.eslint_d, -- javascript, typescript
      null_ls.builtins.formatting.fixjson, -- json
      null_ls.builtins.formatting.stylua, -- lua
      null_ls.builtins.formatting.markdownlint, -- markdown
      null_ls.builtins.formatting.black.with { extra_args = { "--fast", "--line-length=120" } }, -- python
      null_ls.builtins.formatting.isort.with { extra_args = { "--line-width", "120" } }, -- python
      null_ls.builtins.formatting.prettierd.with {
        filetypes = {
          "yaml",
          "graphql",
        },
      },
      null_ls.builtins.diagnostics.stylelint, -- css, scss, less, sass
      null_ls.builtins.diagnostics.hadolint, -- dockerfile
      null_ls.builtins.diagnostics.revive, -- golang
      null_ls.builtins.diagnostics.tidy, -- html
      null_ls.builtins.diagnostics.eslint_d, -- javascript, typescript
      null_ls.builtins.diagnostics.jsonlint, -- json
      null_ls.builtins.diagnostics.luacheck, -- lua
      null_ls.builtins.diagnostics.markdownlint, -- markdown
      null_ls.builtins.diagnostics.pylama.with {
        extra_args = {
          "-l",
          "mccabe,mypy,pycodestyle,pylint,isort",
          "--max-line-length",
          "120",
          "--ignore",
          "E203",
          "--max-complexity",
          "10",
        },
      }, -- python
      null_ls.builtins.diagnostics.yamllint, -- yaml
    }
    return config -- return final config table
  end,
}
