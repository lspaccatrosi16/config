local sections = {}


function sections:add(startchar, description)
    if type(startchar) ~= "string" then
        error("startchar must be a string")
    elseif startchar.len() ~= 1 then
        error("startchar must only be one character long")
    end

    self[startchar] = {
        ch = startchar,
        desc = description,
        actions = {},
    }

    return {
        add = function(mode, combo, action, desc)
            self[startchar][action] = {
                desc = desc,
                mode = mode,
                combo = combo,
            }
            vim.keymap.set(mode, "<leader>" .. startchar .. combo, action)
        end
    }
end

local isSetup = false

local function setup()
    if isSetup then
        return
    end
    isSetup = true
    local buf = vim.api.nvim_create_buf(false, true)

    local widths = {}

    vim.api.nvim_create_user_command("Shortcuts", function()
        for k, v in pairs(sections) do
            local curMax = k.len()


        end
    end, {})
end

return {
    setup = setup,
    new_section = sections.add,
}
