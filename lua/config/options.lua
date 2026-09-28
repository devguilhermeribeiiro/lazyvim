-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

vim.g.lazyvim_ruby_lsp = "ruby_lsp"
vim.g.lazyvim_ruby_formatter = "rubocop"

if vim.env.TERM == "linux" then
  vim.opt.termguicolors = false

  vim.api.nvim_set_hl(0, "Normal", { ctermfg = 7, ctermbg = 0 })
  vim.api.nvim_set_hl(0, "Comment", { ctermfg = 8 })
  vim.api.nvim_set_hl(0, "Keyword", { ctermfg = 3, bold = true })
  vim.api.nvim_set_hl(0, "Type", { ctermfg = 4, bold = true })
  vim.api.nvim_set_hl(0, "Function", { ctermfg = 6 })
  vim.api.nvim_set_hl(0, "String", { ctermfg = 2 })
  vim.api.nvim_set_hl(0, "Constant", { ctermfg = 1 })
  vim.api.nvim_set_hl(0, "Identifier", { ctermfg = 5 })
end
