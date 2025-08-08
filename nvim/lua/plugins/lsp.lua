return{

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
	"SmiteshP/nvim-navbuddy",
	dependencies = {
	  "SmiteshP/nvim-navic",
	  "MunifTanjim/nui.nvim"
	},
	opts = { lsp = { auto_attach = true } }
      }
    },
  },

	    {
	      'dgagn/diagflow.nvim',
	      -- event = 'LspAttach', This is what I use personnally and it works great
	      opts = {
		scope = 'line',
		show_borders = false,
	      }
	    },

	  }
