return {
    "folke/trouble.nvim",
    lazy = false,
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>xX",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>cs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>cl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>xL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>xQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
        {
            "<leader>qD",
            "<cmd>Trouble lsp_declarations toggle<cr>",
            desc = "Go to declaration",
        },
        {
            "<leader>qd",
            "<cmd>Trouble lsp_definitions toggle<cr>",
            desc = "Go to definition",
        },
        {
            "<leader>qr",
            "<cmd>Trouble lsp_references toggle focus=true<cr>",
            desc = "LSP referencies",
        },
        {
            "<leader>qi",
            "<cmd>Trouble lsp_implementations toggle<cr>",
            desc = "LSP implementations",
        },
    },
}
