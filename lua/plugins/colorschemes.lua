return {
  {
    "datsfilipe/vesper.nvim",
    lazy = true,
    config = function()
      require("vesper").setup {
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = false, -- Boolean: Italicizes keywords
          functions = false, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = false, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      }
    end,
  },
  { "vinitkumar/oscura-vim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },
  { "sainnhe/everforest", lazy = true },
  { "craftzdog/solarized-osaka.nvim", lazy = true, opts = {
    transparent = true,
  } },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    config = function()
      require("cyberdream").setup {
        theme = "dark",
      }
    end,
  },
  {
    "p00f/alabaster.nvim",
    lazy = true,
  },
  {
    "sam4llis/nvim-tundra",
    lazy = true,
  },
  {
    "datsfilipe/min-theme.nvim",
    lazy = true
  },
}
