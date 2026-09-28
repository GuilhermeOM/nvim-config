local M = {}

function M.setup(dap)
    local netcoredbg = vim.fn.exepath("netcoredbg")

    dap.adapters.coreclr = {
        type = "executable",
        command = netcoredbg ~= "" and netcoredbg or "/snap/bin/netcoredbg",
        args = { "--interpreter=vscode" },
    }

    dap.configurations.cs = {
        {
            type = "coreclr",
            name = "launch - netcoredbg",
            request = "launch",
            program = function()
                return vim.fn.input(
                    "Path to dll",
                    vim.fn.getcwd() .. "/bin/Debug/",
                    "file"
                )
            end,
        },
    }
end

return M
