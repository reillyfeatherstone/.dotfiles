return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "angularls",
          "bashls",
          "cssls",
          "cssmodules_ls",
          "css_variables",
          "unocss",
          "tailwindcss",
          "golangci_lint_ls",
          "gopls",
          "graphql",
          "html",
          "jsonls",
          "tsserver",
          "markdown_oxide",
          "intelephense",
          "pyright",
          "sqlls",
          "svelte",
          "volar"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.angularls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.cssmodules_ls.setup({})
      lspconfig.css_variables.setup({})
      lspconfig.unocss.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.graphql.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.markdown_oxide.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.pyright.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.svelte.setup({})
      lspconfig.volar.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
