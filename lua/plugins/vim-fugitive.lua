return {
  {
    "tpope/vim-fugitive",
    name = "vim-fugitive",
    disabled = true,
    keys = {
      { "<leader>gp", mode = "n", "<cmd>Git pull<cr>", desc = "Git Pull" },
      { "<leader>gP", mode = "n", "<cmd>Git push<cr>", desc = "Git Push" },
    },
  },
}
