---@diagnostic disable: undefined-global
----------------------------
-- PLUGINS (vim.pack)
----------------------------
vim.pack.add({
    -- LSP
    { src = "https://github.com/neovim/nvim-lspconfig" },

    -- Completion (nvim-cmp)
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    { src = "https://github.com/saadparwaiz1/cmp_luasnip" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },

    -- Telescope
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },

    -- UI
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/Mofiqul/vscode.nvim" },
    { src = "https://github.com/catppuccin/nvim" },
    { src = "https://github.com/ellisonleao/gruvbox.nvim" },

    -- Extras
    { src = "https://github.com/mbbill/undotree" },

    -- Obsidian
    { src = "https://github.com/epwalsh/obsidian.nvim" },
})

----------------------------
-- nvim-cmp
----------------------------
local cmp = require("cmp")
local luasnip = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

local kind_icons = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    File = "󰈙",
    Folder = "󰉋",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰅲",
}

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    formatting = {
        format = function(entry, item)
            item.kind = (kind_icons[item.kind] or "") .. " " .. item.kind

            item.menu = ({
                nvim_lsp = "[LSP]",
                luasnip = "[Snip]",
                buffer = "[Buf]",
                path = "[Path]",
            })[entry.source.name]

            return item
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),

    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
        { name = "buffer" },
    },
})

----------------------------
-- TELESCOPE
----------------------------
local telescope = require("telescope")

telescope.setup({
    defaults = {
        file_ignore_patterns = { "node_modules", ".git", ".venv" },
    },
    pickers = {
        live_grep = {
            additional_args = function()
                return { "--hidden" }
            end,
        },
        find_files = {
            hidden = true,
        },
    },
})

----------------------------
-- COLORS + UI
----------------------------
require("lualine").setup({
    options = {
        theme = "auto",
    },
})

vim.cmd("colorscheme gruvbox")

----------------------------
-- OBSIDIAN
----------------------------
require("obsidian").setup({
    workspaces = {
        {
            name = "notes",
            path = "/Users/cadenmilne/Library/Mobile Documents/iCloud~md~obsidian/Documents/notes",
        },
    },
    ui = { enable = false },
    follow_url_func = function(url)
        vim.fn.jobstart({ "open", url })
    end,
})

----------------------------
-- LSP (NEW API - NO lspconfig)
----------------------------
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
    "lua_ls",
    "ts_ls",
    "rust_analyzer",
    "tailwindcss",
    "clangd",
    "r_language_server",
    "dartls",
    "html",
    "sourcekit",
    "gopls",
    "pyright",
    "elixirls",
    "texlab",
    "hls",
}

for _, server in ipairs(servers) do
    vim.lsp.config(server, {
        capabilities = capabilities,
    })
    vim.lsp.enable(server)
end

----------------------------
-- DIAGNOSTICS
----------------------------
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = { current_line = true },
})

----------------------------
-- FILETYPE SETTINGS
----------------------------
vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        local ft = vim.bo.filetype
        vim.opt_local.wrap = (ft == "markdown" or ft == "tex" or ft == "rmd")
        vim.opt_local.linebreak = (ft == "markdown" or ft == "tex" or ft == "rmd")
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

require("config.core")
