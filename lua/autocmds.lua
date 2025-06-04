require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local ui_group = augroup("johnk2280/ui_group", { clear = true })
local acmd_group = augroup("johnk2280/acmd_group", { clear = true })

-- Setup colorcolumn
local python_width = "79"
local ts_width = "120"
local other_width = "120"

autocmd("FileType", {
    pattern = "*",
    group = ui_group,
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

-- Auto save when focus is lost, buffer leave, INSERT mode leave
autocmd({ "FocusLost", "BufLeave", "InsertLeave" }, {
    pattern = "*",
    group = acmd_group,
    callback = function()
        if vim.bo.modified and not vim.bo.readonly and vim.fn.expand "%" ~= "" then
            vim.cmd "write"
        end
    end,
    -- command = "silent! wa",
    desc = "Auto save when focus is lost, buffer leave, INSERT mode leave",
})
