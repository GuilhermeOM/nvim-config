return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("roslyn_ls", {
                cmd = {
                    "roslyn-language-server",
                    "--stdio"
                }
            })
        end
    }
}
