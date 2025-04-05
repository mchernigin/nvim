return {
    {
        "echasnovski/mini.pairs",
        opts = {
            modes = { insert = true, command = true, terminal = false },
            -- skip autopair when next character is one of these
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            -- skip autopair when the cursor is inside these treesitter nodes
            skip_ts = { "string" },
            -- skip autopair when next character is closing pair
            -- and there are more closing pairs than opening pairs
            skip_unbalanced = true,
            -- better deal with markdown code blocks
            markdown = true,
        },
    },
    {
        "echasnovski/mini.statusline",
        dependencies = {
            "echasnovski/mini-git",
            "echasnovski/mini.diff",
        },
        config = function()
            require("mini.git").setup({})
            require("mini.diff").setup({})
            require("mini.statusline").setup({})
        end
    }
}
