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
vim.diagnostic.config({ virtual_text = true })

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
})

