return {
  -- Add Go-specific plugins
  {
    "fatih/vim-go", -- Provides Go tools integration
    ft = "go",
    build = ":GoInstallBinaries",
  },
  {
    "neovim/nvim-lspconfig", -- LSP support for Go
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
  {
    "ray-x/go.nvim", -- Additional Go features
    dependencies = { "ray-x/guihua.lua" },
    ft = "go",
    config = function()
      require("go").setup({
        lsp_cfg = true, -- Enable LSP configuration
        dap_debug = true, -- Enable debugging
      })
    end,
  },
  {
    "mfussenegger/nvim-dap", -- Debugging with Delve
    dependencies = {
      "leoluz/nvim-dap-go",
    },
    config = function()
      require("dap-go").setup()
    end,
  },
  {
    "ray-x/go.nvim",
    config = function()
      require("go").setup({
        lsp_on_attach = function(client)
          if client.server_capabilities.documentFormattingProvider then
            vim.cmd([[
            augroup LspFormatting
              autocmd! * <buffer>
              autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
            augroup END
          ]])
          end
        end,
      })
    end,
  },
}
