-- colorscheme + statusline
vim.opt.termguicolors = true
vim.g.lightline = {colorscheme = 'catppuccin'}
vim.opt.showmode = false
vim.opt.background = 'dark'

require("catppuccin").setup({
    custom_highlights = function(colors)
        return {
            Normal = { bg = "#15151A" },
        }
    end
})

vim.cmd.colorscheme "catppuccin-mocha"
