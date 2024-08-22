local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local dropdown = themes.get_dropdown({})

local wrap_telescope_theme = function(cmd)
    return function()
        cmd(dropdown)
    end
end

local config = require("lspaccatrosi16/remaps.config")
local sec = config.sections:add("f", "file commands")

sec.add("n", "t", vim.cmd.TSJToggle, "grow / collapse blocks")
sec.add("n", "s", wrap_telescope_theme(builtin.treesitter), "file symbol search")
sec.add("n", "u", vim.cmd.UndotreeToggle, "toggle undo tree")
sec.add("n", "b", "dibvbP", "remove surrounding brackets")
sec.add("n", "q", "diqvqP", "remove surrounding quotes")
