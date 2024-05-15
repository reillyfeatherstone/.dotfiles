return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics

		null_ls.setup({
			sources = {
				formatting.stylua,
				formatting.prettier,
				formatting.black,
				formatting.isort,
        formatting.goimports,
        formatting.sql_formatter,
				diagnostics.revive,
				diagnostics.sqlfluff.with({
					extra_args = { "--dialect", "postgres" },
				}),
        diagnostics.stylelint,
				require("none-ls.diagnostics.eslint_d"),
				require("none-ls.diagnostics.flake8"),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
