local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})
end)

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                -- stop complaining about `undefined global vim`
                globals = {'vim'}
            }
        }
    }
}

-- lsp.ensure_installed({'tsserver', 'clangd', 'lua_ls'})
lsp.ensure_installed({'clangd', 'lua_ls'})

lsp.setup()
