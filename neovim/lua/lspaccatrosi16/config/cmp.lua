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
