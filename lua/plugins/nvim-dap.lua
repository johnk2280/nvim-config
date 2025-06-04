-- DAP client implementation
-- https://github.com/mfussenegger/nvim-dap

return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "mfussenegger/nvim-dap-python", -- Адаптер для Python
        "rcarriga/nvim-dap-ui", -- UI для отладки
        "theHamsta/nvim-dap-virtual-text", -- Опционально, для отображения значений переменных в коде
    },
    config = function()
        require("dap").setup()
        require("dapui").setup()
        require("nvim-dap-virtual-text").setup()
    end,
}
