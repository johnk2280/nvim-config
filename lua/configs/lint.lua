require("lint").linters_bu_ft = {
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    typescriptreact = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    -- python = { "ruff" },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "TextChanged" }, {
    callback = function()
        require("lint").try_lint()
    end,
})
