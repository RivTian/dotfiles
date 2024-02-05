return {
    {
        "gen740/SmoothCursor.nvim",
        config = function()
            require("smoothcursor").setup({
                cursor = "ω",

                priority = 1, -- set marker priority
                fancy = {
                    enable = true,
                    head = { cursor = "ಥ", texthl = "SmoothCursor", linehl = nil },
                    body = {
                        --            (•̀ᴗ• ) ̑̑
                        { cursor = "♡", texthl = "SmoothCursorRed" },
                        { cursor = "•̀", texthl = "SmoothCursorOrange" },
                        { cursor = "ᴗ", texthl = "SmoothCursorYellow" },
                        { cursor = "•", texthl = "SmoothCursorGreen" },
                        { cursor = "ɷ", texthl = "SmoothCursorAqua" },
                        { cursor = "ᴥ", texthl = "SmoothCursorBlue" },
                        { cursor = "ω", texthl = "SmoothCursorPurple" },
                    },
                    tail = { cursor = nil, texthl = "SmoothCursor" },
                },
                disable_float_win = true,

                disabled_filetypes = require("util.ft").exclude_ft, -- this option will be skipped if enabled_filetypes is set. example: { "TelescopePrompt", "NvimTree" }
            })
        end,
        event = "BufRead",
    },
}
