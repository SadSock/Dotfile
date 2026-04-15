return function()
  local opts = {
    delay = 200,
    large_file_cutoff = 2000,
    large_file_overrides = {
      providers = { "lsp" },
    },
  }

  require("illuminate").configure(opts)
  vim.api.nvim_create_augroup("vim_illuminate_augroup", { clear = true })
  vim.api.nvim_create_autocmd({ "UIEnter", "BufReadPre", "BufNewFile" }, {
    group = "vim_illuminate_augroup",
    callback = function()
      vim.cmd([[hi IlluminatedWordText  guifg=none guibg=none ctermfg=none ctermbg=none cterm=underline gui=underline]])
      vim.cmd([[hi IlluminatedWordRead  guifg=none guibg=none ctermfg=none ctermbg=none cterm=underline gui=underline]])
      vim.cmd([[hi IlluminatedWordWrite guifg=none guibg=none ctermfg=none ctermbg=none cterm=underline gui=underline]])
    end,
  })
end
