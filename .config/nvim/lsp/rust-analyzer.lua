return {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml' },
    single_file_support = true,
    capabilities = require('blink.cmp').get_lsp_capabilities()
}
