require("config.core")
require("config.lazy")

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        -- set buffer formatting
        if client:supports_method('textDocument/formatting') then
            vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, { desc = 'Use lsp to format buf.' })
        end

        if client:supports_method('textDocument/definition') then
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Use lsp go to definition.' })
        end

        -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
        -- if client:supports_method('textDocument/completion') then
        --     local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
        --     client.server_capabilities.completionProvider.triggerCharacters = chars
        --     vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
        -- end
    end,
})

-- inline diagnostics
vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true } })

-- enable lsps
vim.lsp.enable({
    -- lua
    "luals",
    -- js, ts
    "ts_ls",
    -- rust
    "rust-analyzer",
    -- tailwind css
    "tailwindcss",
    -- c/c++
    "clangd",
    -- R programming language
    "r-language-server",
    -- dart programming language
    "dartls",
    -- html, css, js w/ vscode ls
    "html",
    -- swift
    "sourcekit",
    -- go
    "gopls",
    -- python
    "pyright",
    -- elixir,
    "elixirls",
    -- laTeX,
    "texlab",
    -- haskell
    "hls"
})

-- Set wrap and linebreak for .md files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "rmd", "tex" },
    command = "setlocal wrap linebreak"
})

-- Unset wrap and linebreak for all other files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        if vim.bo.filetype ~= "markdown"
            and vim.bo.filetype ~= "tex"
            and vim.bo.filetype ~= "rmd" then
            vim.opt_local.wrap = false
            vim.opt_local.linebreak = false
        end
    end
})
