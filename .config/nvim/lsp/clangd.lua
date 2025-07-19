return {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_markers = { 'Makefile' },
    capabilities = require('blink.cmp').get_lsp_capabilities()
}
