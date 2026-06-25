return {
  vim.lsp.config("crystalline", {
    cmd = { "crystalline" },
    filetypes = { "crystal" },
    root_markers = { "shard.yml", ".git" },
  }),

  vim.lsp.enable("crystalline"),

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

  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
  },
}
