return {
    {
      "olimorris/codecompanion.nvim",
      opts = {},
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "franco-ruggeri/codecompanion-spinner.nvim",
      },
      config = function()
        require("codecompanion").setup({
            opts = {
                log_level = "INFO",
            },
            extensions = {
                spinner = {
                    opts = {
                        text = "Processing...",
                    }
                }
            },
            adapters = {
                acp = {
                    codex = function()
                        return require("codecompanion.adapters").extend("codex", {
                            defaults = {
                                auth_method = "chat-gpt",
                            }
                        })
                    end,
                }
            },
            interactions = {
                chat = {
                    adapter = "codex",
                    model = "gpt-6-luna",
                },
                cli = {
                    agent = "codex",
                    agents = {
                        codex = {
                            cmd = "codex",
                            args = {},
                            description = "OpenAI Codex CLI",
                        },
                    },
                },
            }
        })
      end,
    },
}
