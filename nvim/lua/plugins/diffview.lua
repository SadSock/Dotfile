return {
  'sindrets/diffview.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    view = {
      merge_tool = {
	layout = "diff3_mixed",
      },
    },
  },
}
