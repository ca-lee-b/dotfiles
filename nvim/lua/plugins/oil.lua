return {
  {
    "stevearc/oil.nvim",
    opts = {
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 10,
        max_width = 0.5,
        max_height = 0.5,
        border = "rounded",
        win_options = {
          winblend = 50,
        },
      },
    },
    config = function(_, opts)
      require("oil").setup(opts)
      vim.keymap.del("n", "<leader>e")
      vim.keymap.set("n", "<leader>e", require("oil").open_float, { desc = "Open Oil file explorer (float)" })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  },
}
