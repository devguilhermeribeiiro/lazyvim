return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false, -- Disable mason-installed ruby_lsp to use your system/version manager
          cmd = { "ruby-lsp" }, -- Adjust to your specific project needs
        },
      },
    },
  },

  -- Autoformat for ERB
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        eruby = { "erb_format" },
      },
    },
  },
}
