-- ~/.config/nvim/lsp/sourcekit.lua
return {
    cmd = { "sourcekit-lsp" },
    filetypes = { "swift", "objc", "objcpp", "c", "cpp" },
    root_dir = vim.fs.dirname(vim.fs.find(function(name)
        return name:match("%.xcodeproj$") or name == ".git"
    end, { upward = true })[1]),
    capabilities = require('blink.cmp').get_lsp_capabilities()
}
