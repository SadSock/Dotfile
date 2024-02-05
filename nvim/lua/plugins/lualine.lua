return {
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = true,
	event = "VimEnter",
	opts =  {
	    options =
		{
		    theme = 'auto',
		    globalstatus = true,
		    component_separators = { left = '', right = ''},
		    section_separators = { left = '', right = ''},
	    },
	}
    }
}
