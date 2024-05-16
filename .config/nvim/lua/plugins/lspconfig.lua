return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    event = "BufReadPre",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    event = "BufReadPre",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "cssls",
          "cssmodules_ls",
          "css_variables",
          "unocss",
          "tailwindcss",
          "golangci_lint_ls",
          "gopls",
          "html",
          "jsonls",
          "tsserver",
          "markdown_oxide",
          "pyright",
          "sqlls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "j-hui/fidget.nvim",
    },
    lazy = false,
    event = "BufReadPre",
    config = function()
      require("fidget").setup({})
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local servers = {
        "lua_ls",
        "cssls",
        "cssmodules_ls",
        "css_variables",
        "unocss",
        "tailwindcss",
        "golangci_lint_ls",
        "gopls",
        "html",
        "jsonls",
        "tsserver",
        "markdown_oxide",
        "pyright",
        "sqlls",
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          capabilities = capabilities
        })
      end

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
