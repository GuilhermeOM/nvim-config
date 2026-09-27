-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local out = vim.fn.system({ 
      "git", 
      "clone", 
      "--filter=blob:none", 
      "--branch=stable", 
      "https://github.com/folke/lazy.nvim.git",
      lazypath 
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    {
        { import = "plugins" },
        { import = "plugins.lsp" }
    },
    { 
        -- automatically check for plugin updates
        checker = {
            enabled = true 
        },
        change_detection = {
            notify = false
        }
    }
)
