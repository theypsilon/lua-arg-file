local m = {}

function m.parse(path)
    local file = io.open(path, "r")
    local args = {}
    if not file then
        args.error = "file not exists"
        return args
    end
    local contents = file:read("*a")
    for word in string.gmatch(contents, '[^%s]+') do
        args[#args + 1] = word
    end
    return args
end

return m