return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = {
                "r",
                "rnoweb",
                "markdown",
                "markdown_inline",
                "c",
                "go",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "java"
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },
            indent = {
                enable = true
            },
            injections = {
                enable = true
            }
        }
    end
}
