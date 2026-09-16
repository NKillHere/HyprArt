csize = 24
cursor = {
    x = {
        size = hl.env("XCURSOR_SIZE", tostring(csize)),-- 24 by default
        hl.env("XCURSOR_THEME", "Bibata-Modern-Ice") --default is "Bibata-Modern-Ice"
    },
    hypr = {
        size = hl.env("HYPRCURSOR_SIZE", tostring(csize)), -- 24 by default
        hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice") -- default is the same as the x one, just ported over
    }
}

function resize_cursor(type, num)
    if type == "+" then
        local lcsize = tostring(csize + num)
        cursor.x.size = hl.env("XCURSOR_SIZE", lcsize)
        cursor.hypr.size = hl.env("HYPRCURSOR_SIZE", lcsize)
        return lcsize
    end
    if type == "-" then
        local lcsize = tostring(csize - num)
        cursor.x.size = hl.env("XCURSOR_SIZE", lcsize) -- Hopefully it clamps automatically
        cursor.hypr.size = hl.env("HYPRCURSOR_SIZE", lcsize)
    else
        return nil
    end
end
