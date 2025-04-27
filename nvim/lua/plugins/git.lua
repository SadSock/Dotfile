return {{
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    opts = {
	signs = {
	    add = { text = "▎" },
	    change = { text = "▎" },
	    delete = { text = "" },
	    topdelete = { text = "" },
	    changedelete = { text = "▎" },
	    untracked = { text = "▎" },
	},
	on_attach = function(buffer)
	end,
    },
},
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {}
    end,
  },
}
