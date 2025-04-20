return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "neanias/everforest-nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
      background = "dark",
    },
    {
      "cdmill/neomodern.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        require("neomodern").setup({
          theme = "roseprime",
        })
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "default",
    },
  },
}
