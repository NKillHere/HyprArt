function prequire(path) -- a pcall method requires
    if type(path) ~= "string" then
        print("Failed to load a module because whoever coded this forgot " +
            "to use a string")
    end
    local status, value = pcall(require, path)
    if not status then
        print("Failed to load module ", path, ", its error message was: ", value)
    end
end
