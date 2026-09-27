vim.lsp.enable({ "roslyn_ls" })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

        if client:supports_method("textDocument/completion") then
          vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
        end
    end
})

vim.opt.complete:append("o")

