local theme = require('lualine.themes.nord')

local function time()
    return os.date("%d/%m %H:%M")
end

require('lualine').setup({
    options = {
        theme = theme,
        icons_enabled = false,
        component_separators = { left = ' ', right = ' ' },
        section_separators = { left = ' ', right = ' ' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {'filename', 'diagnostics'},
        lualine_c = {'location'},
        lualine_x = {},
        lualine_y = {'filetype'},
        lualine_z = {time},
    }
})
