return {
  "hrsh7th/nvim-cmp",
  keys = { ":", "/", "?" },
  dependencies = {
	  "hrsh7th/cmp-calc",
	  "hrsh7th/cmp-nvim-lua",
	  "hrsh7th/cmp-cmdline",
	  "octaltree/cmp-look",
	  "petertriho/cmp-git",
    "ray-x/cmp-treesitter",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
  },
  config = function (_, opts)
    local cmp = require "cmp"

    opts = require("astronvim.utils").extend_tbl(opts, {
	    sources = cmp.config.sources {
		    { name = "nvim_lsp", priority = 1000 },
		    { name = "nvim_lsp_signature_help", priority = 950 },
		    { name = "codeium", priority = 900 },
		    { name = "luasnip", priority = 800 },
		    { name = "path", priority = 700 },
		    { name = "treesitter", priority = 600 },
		    { name = "calc", priority = 500 },
		    { name = "look", priority = 400, keyword_length = 5 },
		    { name = "buffer", priority = 300, keyword_length = 5 },
		    { name = "nvim_lua", priority = 200 },
	    },
    })

    cmp.setup(opts)

    cmp.setup.filetype("gitcommit", {
	    sources = cmp.config.sources({
		    { name = "git" },
	    }, {
		    { name = "buffer" },
	    }),
    })

    cmp.setup.cmdline("/", {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = {
		    { name = "buffer" },
	    },
    })

    cmp.setup.cmdline("?", {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = {
		    { name = "buffer" },
	    },
    })

    cmp.setup.cmdline(":", {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = cmp.config.sources({
		    { name = "path" },
	    }, {
		    { name = "cmdline" },
	    }),
    })
  end,
}
