require 'nvim-treesitter.configs'.setup {

  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "markdown", "markdown_inline", "javascript", "go", "typescript", "yaml", "json" },
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
