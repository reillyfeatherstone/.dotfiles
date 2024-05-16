return {
  "rose-pine/nvim",
  event = "BufReadPre",
  lazy = false,
  name = "rose-pine",
  config = function()
    vim.cmd.colorscheme = "rose-pine"
  end
}
