require("neodev").setup()

local lsp_zero = require("lsp-zero")

lsp_zero.setup()
lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "gopls", "texlab", "tsserver", "jsonls" },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({
      })
    end,
  },
})

