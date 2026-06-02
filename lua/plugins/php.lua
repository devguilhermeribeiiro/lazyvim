return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          cmd = { "phpactor", "language-server" },
          filetypes = { "php" },
        },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
        "phpdoc",
      },
    },
  },
}
