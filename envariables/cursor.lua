local size = 24
cursor = {
    x = {
        size = hl.env("XCURSOR_SIZE", tostring(size)),-- 24 by default
        hl.env("XCURSOR_THEME", "Bibata-Modern-Ice") --default is "Bibata-Modern-Ice"
    },
    hypr = {
        size = hl.env("HYPRCURSOR_SIZE", tostring(size)), -- 24 by default
        hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice") -- default is the same as the x one, just ported over
    }
}
