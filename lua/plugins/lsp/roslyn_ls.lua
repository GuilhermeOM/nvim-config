return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local blink = require("blink.cmp")

            vim.lsp.config("roslyn_ls", {
                cmd = {
                    "roslyn-language-server",
                    "--stdio"
                },
                capabilities = blink.get_lsp_capabilities(),
            })
        end
    }
}
