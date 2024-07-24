local lsp_zero = require("lsp-zero")

lsp_zero.setup()

local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'nvim_lsp' }
  },

  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }
})

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "gopls", "texlab", "tsserver", "jsonls" },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
