return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = false },
            dashboard = { enabled = false },
            explorer = { enabled = true },
            indent = { enabled = true },
            input = { enabled = false },
            notifier = { enabled = false },
            quickfile = { enabled = false },
            scope = { enabled = false },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = true },
            picker = {
                enabled = true,
                sources = {
                    explorer = {
                        hidden = false,
                        ignored = true,
                        layout = {
                            preset = "sidebar",
                            preview = false,
                            layout = {
                                position = "left",
                                width = 30,
                                min_width = 30,
                            },
                        },
                    },
                },
            },
        },
        keys = {
            -- file explorer
            { "<leader>to", function() Snacks.explorer() end, desc = "Open file explorer" },
            -- search
            { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
            -- lsp
            { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
            { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "gR", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
            { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" }
        }
    }
}
