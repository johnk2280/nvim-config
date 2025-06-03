local python_width = "79"
local ts_width = "120"
local other_width = "79"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        if vim.bo.filetype == "python" then
            vim.opt.colorcolumn = python_width
        elseif
            vim.bo.filetype == "javascript"
            or vim.bo.filetype == "typescript"
            or vim.bo.filetype == "typescriptreact"
            or vim.bo.filetype == "javascriptreact"
        then
            vim.opt.colorcolumn = ts_width
        else
            vim.opt.colorcolumn = other_width
        end
    end,
})
