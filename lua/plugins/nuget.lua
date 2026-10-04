return {
    {
        "d7omdev/nuget.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "j-hui/fidget.nvim",
        },
        config = function()
            require("nuget").setup({
                keys = {
                    install = { "n", "<leader>ni" },
                    remove = { "n", "<leader>nr" },
                    clear_cache = { "n", "<leader>nc" },
                }
            })
        end
    }
}

