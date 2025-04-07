return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc" },
    telemetry = { enabled = false },
    formatters = {
        ignoreComments = false,
    },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { 'vim' }
            },
            signatureHelp = { enabled = true },
        },
    },
    capabilities = require('blink.cmp').get_lsp_capabilities()
}
