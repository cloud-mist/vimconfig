require("Comment").setup(
    {
        padding = true,
        sticky = true, -- cursor stay at its position
        ignore = nil, -- Lines to be ignored while comment/uncomment.
        --
        toggler = {
            line = "mcc",
            block = "mbc"
        },
        ---LHS of operator-pending mappings in NORMAL + VISUAL mode
        opleader = {
            line = "mc",
            block = "mb"
        },
        extra = {
            above = "mcO", --line above
            below = "mco", --line down
            eol = "mcA" -- line tail
        },
        -- Switch
        mappings = {
            basic = true,
            extra = true,
            extended = false
        },
        --
        pre_hook = nil,
        post_hook = nil
    }
)
