require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "markdown", "markdown_inline", "javascript", "go", "typescript", "yaml", "json" },
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
