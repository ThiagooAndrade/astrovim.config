return {
  {
    "nguyenvukhang/nvim-toggler",
    config = function() require("nvim-toggler").setup() end,
    keys = {
      { "<leader>i", "<cmd>lua require('nvim-toggler').toggle()<CR>", desc = "Invert value" },
    },
  },
}
