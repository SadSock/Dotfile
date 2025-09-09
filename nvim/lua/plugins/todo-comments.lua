return {
  {
    "folke/todo-comments.nvim",
    lazy = true,
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    config = true,
    opts = {
        keywords = {
            ANCHOR = { icon = "🌀", color = "hint", alt = { "SINGULARITY", "WORMHOLE" } },
        }
    }
  },
}
