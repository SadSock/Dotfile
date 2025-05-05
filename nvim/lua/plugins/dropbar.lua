return {
  {
    'Bekaboo/dropbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },

    config = function()
      require("dropbar").setup({
	bar = {
	  sources = function(buf, _)
	    local sources = require("dropbar.sources")
	    local utils = require("dropbar.utils")
	    if vim.bo[buf].ft == "markdown" then
	      return { sources.markdown }
	    end
	    if vim.bo[buf].buftype == "terminal" then
	      return { sources.terminal }
	    end
	    return { utils.source.fallback({ sources.lsp, sources.treesitter }) }
	  end,
	},
      })
    end,
  }
}
