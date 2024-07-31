-- Undotree:
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Harpoon:
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
