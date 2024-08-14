local config = require("lspaccatrosi16/remaps.config")

local sec = config.sections:add("c", "comments")

sec.add("n", "l", "<Plug>(comment_toggle_linewise_current)", "toggle line comment")
sec.add("n", "b", "<Plug>(comment_toggle_blockwise_current)", "toggle block comment")
