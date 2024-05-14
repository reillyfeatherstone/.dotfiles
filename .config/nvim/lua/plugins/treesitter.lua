return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "bash",
        "c",
        "c_sharp",
        "clojure",
        "cpp",
        "css",
        "csv",
        "go",
        "html",
        "http",
        "jq",
        "json",
        "php",
        "sql",
        "svelte",
        "typescript",
        "xml"
      },
      highlight = { enable = true },
      indnet = { enable = true }
    })
  end
}
