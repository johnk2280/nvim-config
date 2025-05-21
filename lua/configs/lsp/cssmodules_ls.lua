-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/cssmodules_ls.luarocks

return {
    cmd = {
        "cssmodules-language-server",
    },
    filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
    },
    root_markers = {
        "package.json",
    },
}
