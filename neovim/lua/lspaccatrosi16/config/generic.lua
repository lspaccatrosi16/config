local setup = function (name)
    local status, req = pcall(require, name)
    if (status) then
        req.setup()
    else
        print("could not perform generic setup on package " .. name)
    end
end

setup('scrollEOF')
setup('telescope')
setup('Comment')
setup('treesj')
