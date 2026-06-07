return {
  {
    "milanglacier/minuet-ai.nvim",
    enabled = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "InsertEnter",
    config = function()
      require("minuet").setup({
        filter = function(bufnr)
          return vim.bo[bufnr].modifiable and vim.bo[bufnr].buftype == ""
        end,
        virtualtext = {
          auto_trigger_ft = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "python",
            "lua",
            "json",
            "html",
            "css",
            "scss",
            "markdown",
            "yaml",
            "toml",
            "sh",
            "bash",
          },
          keymap = {
            accept = "<Tab>",
            accept_line = "<A-l>",
            accept_n_lines = "<A-n>",
            prev = "<A-[>",
            next = "<A-]>",
            dismiss = "<A-e>",
          },
        },
        provider = "openai_compatible",
        provider_options = {
          openai_compatible = {
            api_key = "OPENROUTER_API_KEY",
            end_point = "https://openrouter.ai/api/v1/chat/completions",
            model = "nvidia/nemotron-3-nano-30b-a3b:free",
            name = "OpenRouter",
            optional = {
              max_tokens = 1024,
            },
          },
        },
        throttle = 2000,
        debounce = 500,
        request_timeout = 3,
      })
    end,
  },
}
