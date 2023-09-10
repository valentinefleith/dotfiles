local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	{"catppuccin/nvim", name = "catppuccin", priority = 1000},
	{'itchyny/lightline.vim'},
	'voldikss/vim-floaterm',
	{"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c", "cpp", "make", "cmake", "rust", "java", "python", "haskell",
					"clojure", "ocaml", "javascript", "typescript", "html",
					"css", "lua", "vim", "vimdoc", "csv", "json", "latex",
					"markdown", "toml", "tsx", "xml", "yaml", "diff", "doxygen",
					"gitignore"
				},
				sync_install = false,
				highlight = {enable = true},
				indent = {enable = true}
			})
		end
	},
	    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
})
