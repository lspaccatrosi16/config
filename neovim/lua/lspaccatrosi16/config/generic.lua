local setup = function (name, config)
    local status, req = pcall(require, name)
    if (status) then
        req.setup(config)
    else
        print("could not perform generic setup on package " .. name)
    end
end

setup('scrollEOF')
setup('telescope')
setup('Comment')
setup('treesj')
setup('mini.ai')
setup('mini.completion')
setup('mini.jump')
setup('mini.pairs')
