-- let's you format your files
-- kind of the bridge between the lsp and neovim
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
        -- Change the lines below for Python
        -- As it is for ruby
        --null_ls.builtins.diagnostics.rubocop,
        --null_ls.builtins.formattings.rubocop,
        --null_ls.builtins.formatting.ruff,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
