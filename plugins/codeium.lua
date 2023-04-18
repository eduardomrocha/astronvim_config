return {
  {
    {
      "jcdickinson/http.nvim",
      build = "cargo build --workspace --release",
    },
    {
      "jcdickinson/codeium.nvim",
      dependencies = {
          "jcdickinson/http.nvim",
          "nvim-lua/plenary.nvim",
          "hrsh7th/nvim-cmp",
      },
      opts = {},
      event = "User AstroFile",
    },
  }
}
