return {
  "epwalsh/obsidian.nvim",
  version = "*",  
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
        workspaces = {
          {
            name = "notes",
            path = "/Users/cadenmilne/Library/Mobile Documents/iCloud~md~obsidian/Documents/notes",
          },
        },
        follow_url_func = function(url)
            vim.fn.jobstart({"open", url})  -- Mac OS
        end,
  },
}
