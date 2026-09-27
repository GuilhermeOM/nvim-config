vim.lsp.enable({ "roslyn_ls" })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
    end
})

