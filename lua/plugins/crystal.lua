return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        crystalline = {
          cmd = { "crystalline", "--stdio" },
          filetypes = { "crystal" },
          root_dir = require("lspconfig.util").root_pattern("shard.yml", ".git"),
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "crystal",
      },
    },
  },
}
