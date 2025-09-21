return {
    {
        "catppuccin/nvim",
    },
    { "Mofiqul/vscode.nvim" },
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd("colorscheme gruvbox")
        end
    }

}
