return{ {
  "fnune/recall.nvim",
  version = "*",
  config = function()
    local recall = require("recall")

    recall.setup({

        sign = "🔖",
	sign_highlight = "@comment.note",

    })
  end
},
}
