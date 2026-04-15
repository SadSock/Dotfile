return function()
  require("tokyonight").setup({
    styles = {
      comments = { italic = false },
      keywords = { italic = false, bold = false },
      functions = { bold = true },
      variables = {},
      sidebars = "dark",
      floats = "dark",
    },
    on_highlights = function(hl, c)
      hl.Visual = { bg = c.bg_visual, bold = true }
      hl.VisualNOS = { bg = c.bg_visual, bold = true }
    end,
  })

  require("onedark").setup({
    style = "dark",
    transparent = false,
    term_colors = true,
    ending_tildes = false,
    cmp_itemkind_reverse = false,
    toggle_style_key = nil,
    toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
    code_style = {
      comments = "none",
      keywords = "none",
      functions = "bold",
      strings = "none",
      variables = "none",
    },
    lualine = {
      transparent = false,
    },
    colors = {},
    highlights = {},
    diagnostics = {
      darker = true,
      undercurl = true,
      background = true,
    },
  })

  vim.api.nvim_create_autocmd({ "UIEnter", "BufReadPre", "BufNewFile" }, {
    callback = function()
      vim.cmd([[hi Visual gui=bold cterm=bold]])
      vim.cmd([[hi VisualNOS gui=bold cterm=bold]])
    end,
  })

  vim.cmd.colorscheme("tokyonight-moon")
end
