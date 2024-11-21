return {
    {
        "Mofiqul/vscode.nvim",
        name = "vscode",
        priority = 1000,
        lazy = false,
        config = function()
            local c = require('vscode.colors').get_colors()
            -- setting it before setup will give us the dark bg
            -- vim.cmd.colorscheme "vscode"
            require('vscode').setup({
                -- Enable transparent background
                transparent = true,
                -- Disable nvim-tree background color
                disable_nvimtree_bg = true,
                -- Override colors (see ./lua/vscode/colors.lua)
                color_overrides = {
                    vscLineNumber = '#FFFFFF',
                    vscBack = "#FFFFFF",
                },
                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
                },
            })
           -- vim.cmd.colorscheme "vscode"
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        config = function()
            require('catppuccin').setup({
                transparent_background = false,
            })
           vim.cmd.colorscheme "catppuccin-frappe"
        end
    }
}
