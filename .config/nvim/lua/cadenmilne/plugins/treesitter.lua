return{
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java", "markdown", "markdown_inline"},
            sync_install = false,
            auto_install = true,
            ignore_install = {},
            highlight = {
                enable = true,
                disable = { },
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
