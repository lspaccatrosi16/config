-- Telescope
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local dropdown = themes.get_dropdown({})

local wrap_telescope_theme = function(cmd)
    return function()
        cmd(dropdown)
    end
end


vim.keymap.set('n', '<leader>pf', wrap_telescope_theme(builtin.find_files), {})
vim.keymap.set('n', '<leader>ps', wrap_telescope_theme(builtin.live_grep), {})
vim.keymap.set('n', '<leader>pe', wrap_telescope_theme(builtin.diagnostics), {})
vim.keymap.set('n', '<leader>fs', wrap_telescope_theme(builtin.treesitter), {})
