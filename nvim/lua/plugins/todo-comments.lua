return {
  {
    "folke/todo-comments.nvim",
    lazy = true,
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    config = true,
  },
}
