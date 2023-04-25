-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "bashls",
        "dockerls",
        "gopls",
        "html",
        "jsonls",
        "pyright",
        "stylelint_lsp",
        "lua_ls",
        "tsserver",
        "vimls",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "golines",
        "eslint_d",
        "fixjson",
        "stylua",
        "markdownlint",
        "black",
        "prettierd",
        "stylelint",
        "hadolint",
        "revive",
        "jsonlint",
        "luacheck",
        "pylama",
        "yamllint",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "js",
      },
    },
  },
}
