return {
    "folke/trouble.nvim",
    lazy = false,
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
        {
            "<leader>qx",
            "<cmd>Trouble diagnostics toggle focus=true<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>qX",
            "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>qs",
            "<cmd>Trouble symbols toggle focus=true<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>ql",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>qL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>qQ",
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
