return {
    {
        "nvim-telescope/telescope.nvim", version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { 
                "nvim-telescope/telescope-fzf-native.nvim", 
                build = "make" 
            },
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    previewer = true,
                    mappings = {
                        i = {
                            ["<C-k>"] = require("telescope.actions").move_selection_previous,
                            ["<C-j>"] = require("telescope.actions").move_selection_next,
                        }
                    }
                }
            })

            local builtin = require('telescope.builtin')

            vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Fuzzy find files" })
            vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Fuzzy find string" })
            vim.keymap.set("n", "<leader>pw", builtin.grep_string, { desc = "Fuzzy find current string" })

            vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Fuzzy find buffers" })
        end
    }
}
