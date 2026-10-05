vim.lsp.enable({ "roslyn_ls" })

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    severity_sort = true,
    update_in_insert = false,
    float = { border = "rounded", source = "always" },
})

vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(0, {
            focus = false,
            scope = "line",
            border = "rounded",
            source = "always",
        })
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'LSP: Rename symbol' })
    end
})

