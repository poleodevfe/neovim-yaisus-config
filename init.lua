vim.cmd([[set fileformat=unix]])

require("yaisus.core.options")
require("yaisus.core.keymaps")
require("yaisus.core.colorscheme")
require("yaisus.plugins-setup")
require("yaisus.plugins.comment")
require("yaisus.plugins.nvim-tree")
require("yaisus.plugins.lualine")
require("yaisus.plugins.telescope")
require("yaisus.plugins.nvim-cmp")
require("yaisus.plugins.lsp.mason")
require("yaisus.plugins.lsp.lspsaga")
require("yaisus.plugins.lsp.lspconfig")
require("yaisus.plugins.lsp.null-ls")
require("yaisus.plugins.autopairs")
require("yaisus.plugins.treesitter")
require("yaisus.plugins.nvim-ufo")
