return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
  },
  {
    "p00f/alabaster.nvim",
    lazy = true,
  },
  {
    "catppuccin/vim",
    lazy = true,
  },
  {
    "sam4llis/nvim-tundra",
    lazy = true,
  },
  {
    "datsfilipe/min-theme.nvim",
    lazy = true,
    config = function()
      require("min-theme").setup {
        -- (note: if your configuration sets vim.o.background the following option will do nothing!)
        theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
          comments = false, -- Boolean: Italicizes comments
          keywords = false, -- Boolean: Italicizes keywords
          functions = false, -- Boolean: Italicizes functions
          strings = false, -- Boolean: Italicizes strings
          variables = false, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
      }
    end,
  },
}
