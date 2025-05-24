return {
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'nvimtools/hydra.nvim',
    },
    opts = {

      hint_config = {
	float_opts = {
	  border = 'rounded',
	},
	position = 'bottom-right',
      },
      generate_hints = {
	normal = true,
	insert = true,
	extend = true,
	config = {
	  column_count = 1,
	},
      },

    },
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
	mode = { 'v' },
	'<Leader>m',
	'<cmd>MCvisual<cr>',
	desc = 'Multicursors',
      },
      {
	mode = { 'n' },
	'<Leader>m',
	'<cmd>MCunderCursor<cr>',
	desc = 'Multicursors',
      },
    },
  }
}
