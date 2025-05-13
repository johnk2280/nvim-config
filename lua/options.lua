require "nvchad.options"

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- Numbers
o.relativenumber = true

-- Mouse
o.mousefocus = true

-- Other
o.scrolloff = 8
o.wrap = false
o.termguicolors = true
