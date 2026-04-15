return function()
  require("trim").setup({
    ft_blocklist = {},
    patterns = {},
    trim_on_write = true,
    trim_trailing = true,
    trim_last_line = true,
    trim_first_line = true,
    highlight = false,
    highlight_bg = "#ff0000",
    highlight_ctermbg = "red",
  })
end
