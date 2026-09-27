return {
    {
        "saghen/blink.cmp",
        dependencies = {
            "saghen/blink.lib",
            "rafamadriz/friendly-snippets",
        },
        build = function()
            require("blink.cmp").build():pwait()
        end,
        opts = {
            keymap = {
                preset = "default",
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
            },
            completion = { 
                documentation = { auto_show = false } 
            },
            sources = { default = { "lsp", "path", "snippets", "buffer" } },
            fuzzy = { implementation = "rust" }
        },
    }
}
