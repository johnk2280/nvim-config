local map = vim.keymap.set

-- Function to set highlight groups
local function set_highlights()
    vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {
        fg = "#8891B1",
    })
    vim.api.nvim_set_hl(0, "NvimTreeStatusLine", {
        bg = "#1e222a",
    })
    -- Set statusline background color
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", {
        fg = "#1e222a",
    }) -- Set end of buffer color to match background

    -- Highlight selected file or folder
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", {
        bg = "#383D4E",
    }) -- Set background color when a file or folder is selected
    vim.api.nvim_set_hl(0, "NvimTreeCursorLineNr", {
        fg = "#abb2bf",
        bg = "#383D4E",
    }) -- Set foreground and background color of line number when a file or folder is selected
end

return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        dofile(vim.g.base46_cache .. "nvimtree")

        local nvtree = require "nvim-tree"
        local api = require "nvim-tree.api"

        -- Set custom highlights
        set_highlights()

        -- Add custom mappings
        local function custom_on_attach(bufnr)
            local function opts(desc)
                return {
                    desc = "nvim-tree: " .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true,
                }
            end

            api.config.mappings.default_on_attach(bufnr)
            map("n", "+", api.tree.change_root_to_node, opts "CD")
            map("n", "?", api.tree.toggle_help, opts "Help")
            map("n", "<ESC>", api.tree.close, opts "Close")
        end

        -- Automatically open file upon creation
        api.events.subscribe(api.events.Event.FileCreated, function(file)
            vim.cmd("edit " .. file.fname)
        end)

        local HEIGHT_RATIO = 0.8
        local WIDTH_RATIO = 0.5

        nvtree.setup {
            on_attach = custom_on_attach,
            disable_netrw = true,
            hijack_cursor = false,
            sync_root_with_cwd = true,
            -- hijack_unnamed_buffer_when_opening = false,
            update_focused_file = {
                enable = true,
                update_cwd = true,
                ignore_list = {},
            },

            filters = {
                dotfiles = false,
                custom = {
                    "^.git$",
                    "^.DS_Store$",
                    "^.idea$",
                },
                exclude = {
                    ".venv",
                    "node_modules",
                    ".python-version",
                    ".env",
                    "logs",
                    "temp",
                },
            },

            git = {
                enable = true,
                show_on_open_dirs = false,
            },

            diagnostics = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = false,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },
            -- modified = {
            --     enable = true,
            --     show_on_dirs = true,
            --     show_on_open_dirs = false,
            -- },
            renderer = {
                hidden_display = "none",
                indent_markers = {
                    enable = true,
                    icons = {
                        corner = "└",
                        edge = "│",
                        item = "├",
                        none = " ",
                    },
                },
                highlight_git = "none",
                highlight_modified = "name",
                icons = {
                    git_placement = "after",
                    glyphs = {
                        folder = {
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                        },
                        git = {
                            -- unstaged = "",
                            -- staged = "",
                            -- unmerged = "",
                            -- unmerged = "",
                            -- renamed = "",
                            -- untracked = "",
                            -- deleted = "",
                            -- ignored = "󰴲",
                        },
                    },
                },
            },

            view = {
                width = 30, -- by default
                side = "left", -- by default
                -- signcolumn = "no", -- by default
                preserve_window_proportions = true,
            },

            filesystem_watchers = {
                ignore_dirs = { "node_modules" },
            },
        }

        -- Key mappings
        map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
            desc = "Toggle NvimTree",
        })
    end,
}
