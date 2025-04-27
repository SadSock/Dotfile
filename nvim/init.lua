local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
	lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- set leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable command history list
vim.keymap.set('n', 'q:', '<nop>', { noremap = true })

-- 禁用 command window
vim.keymap.set('n', 'q/', '<nop>', { noremap = true })
vim.keymap.set('n', 'q?', '<nop>', { noremap = true })


-- show line number
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.shiftwidth = 2

-- disable line wrap
vim.wo.wrap = false
vim.wo.linebreak = true
vim.wo.list = false -- extra option I set in addition to the ones in your question

-- disable auto fold
vim.opt.foldlevelstart = 99 -- 0 to close all folds upon opening file
vim.opt.foldenable = true

--
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.incsearch = true
vim.opt.infercase = true
--

vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }


-- Please do NOT set `updatetime` to above 500, otherwise most plugins may not function correctly
-- vim.opt.updatetime = 200


require("lazy").setup({
    spec = {
	-- add LazyVim and import its plugins
	-- { "LazyVim/LazyVim", import = "lazyvim.plugins" },
	-- import any extras modules here
	-- { import = "lazyvim.plugins.extras.lang.typescript" },
	-- { import = "lazyvim.plugins.extras.lang.json" },
	-- { import = "lazyvim.plugins.extras.ui.mini-animate" },
	-- import/override with your plugins
	{ import = "plugins" },
    },
    defaults = {
	-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
	-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
	lazy = false,
	-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
	-- have outdated releases, which may break your Neovim install.
	version = false, -- always use the latest git commit
	-- version = "*", -- try installing the latest stable version for plugins that support semver
    },
    install = {  missing = true,colorscheme = { "onedark" } },
    checker = { enabled = false }, -- automatically check for plugin updates
    performance = {
	rtp = {
	    -- disable some rtp plugins
	    disabled_plugins = {
		"gzip",
		--"matchit",
		--"matchparen",
		-- "netrwPlugin",
		"tarPlugin",
		"tohtml",
		"tutor",
		"zipPlugin",
	    },
	},
    },
})


-- select theme
vim.cmd.colorscheme('onedark')

local wk = require("which-key")

wk.add(
{
    {
      mode = { "n", "v" },
      { "<leader><tab>", group = "tabs" },
      { "<leader>b", group = "buffer" },
      { "<leader>c", group = "code" },
      { "<leader>f", group = "file/find" },
      { "<leader>g", group = "git" },
      { "<leader>gh", group = "hunks" },
      { "<leader>q", group = "quit/session" },
      { "<leader>s", group = "search" },
      { "<leader>u", group = "ui" },
      { "<leader>w", group = "windows" },
      { "<leader>x", group = "diagnostics/quickfix" },
      { "[", group = "prev" },
      { "]", group = "next" },
      { "g", group = "goto" },
      { "gs", group = "surround" },
    },
  }
)


wk.add(
{
    { "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Switch Buffer" },
    { "<leader>/", "<cmd>Telescope live_grep_args<cr>", desc = "Grep Args" },
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find File" },
  }
)

-- find
wk.add(
{
    { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
    { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Change Colorscheme" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>fn", "<cmd>enew<cr>", desc = "New File" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
    { "<leader>fw", "<cmd>Telescope live_grep_args<cr>", desc = "Grep Args" },
    }
)

-- buffers
wk.add(
{
    { "<leader>bb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Switch Buffers" },
}
)

-- search
wk.add(
{
    { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
    { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
    { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>sS", "<cmd>Telescope lsp_dynamic_workspace_symbols", desc = "Goto Symbol (Workspace)" },
    { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
    { "<leader>sg", "<cmd>Telescope live_grep_args<cr>", desc = "Grep Args" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
    { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
    { "<leader>ss", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Goto Symbol" },
  }
)

wk.add(
{
    { "K", vim.lsp.buf.hover, desc = "Hover" },
    { "grD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
    { "gri", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, desc = "Goto Implementation" },
    { "grk", vim.lsp.buf.signature_help, desc = "Signature Help" },
    { "grd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, desc = "Goto Definition" },
    { "grr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
    { "gry", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, desc = "Goto T[y]pe Definition" },
    { "gO", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Goto Symbol" },
    { "<c-k>", vim.lsp.buf.signature_help, desc = "Signature Help", mode = "i" },
  }
)

wk.add(
{
    { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" } },
    { "<leader>cA", function()
          vim.lsp.buf.code_action({
            context = {
              only = {
                "source",
              },
              diagnostics = {},
            },
     })
        end, desc = "Source Action" },
    { "<leader>cl", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
    { "<leader>cr", vim.lsp.buf.rename, desc = "Rename" },
    { "<leader>cS", "<cmd>telescope lsp_dynamic_workspace_symbols", desc = "Goto Symbol (Workspace)" },
    { "<leader>cs", "<cmd>telescope lsp_document_symbols<cr>", desc = "Goto Symbol" },
  }
  )


-- git
wk.add({
        {"<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>",  desc = "Next Hunk" },
        {"<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",  desc = "Prev Hunk" },
        {"<leader>gl", "<cmd>Gitsigns toggle_current_line_blame <cr>",  desc = "Blame" },
        {"<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",  desc = "Preview Hunk" },
        {"<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>",  desc = "Reset Hunk" },
        {"<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>",  desc = "Reset Buffer" },
        {"<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>",  desc = "Stage Hunk" },
        {"<leader>gu",
            "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc =  "Undo Stage Hunk",
        },
        {"<leader>go", "<cmd>Telescope git_status<cr>",  desc = "Open changed file" },
        {"<leader>gb", "<cmd>Telescope git_branches<cr>",  desc = "Checkout branch" },
        {"<leader>gc", "<cmd>Telescope git_commits<cr>",  desc = "Checkout commit" },
        {"<leader>gd",
            "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Diff",}
	}
    )


vim.api.nvim_create_autocmd('FileType', {
    pattern = 'cpp',
    callback = function()
        vim.opt.commentstring = '// %s'
    end
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'cuda',
    callback = function()
        vim.opt.commentstring = '// %s'
    end
})

-- 在 Neovim 中设置文件类型映射
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.maca",
  callback = function()
    vim.bo.filetype = "cpp"
  end
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.inc",
  callback = function()
    vim.bo.filetype = "cpp"
  end
})
