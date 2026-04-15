return function()
  require("nvim-navbuddy").setup({
    lsp = {
      auto_attach = true,
    },
  })

  require("diagflow").setup({
    scope = "line",
    show_borders = false,
  })
end
