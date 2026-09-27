return {
    {
        "https://github.com/nvim-tree/nvim-tree.lua",
        enabled = true,
        config = function()
            require("nvim-tree").setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 30,
                    side = "left"
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
                git = {
                    ignore = false
                }
            })

            vim.keymap.set("n", "<leader>to", "<cmd>NvimTreeToggle<CR>", { desc = "Toogle file explorer" })
            vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
        end
    }
}
