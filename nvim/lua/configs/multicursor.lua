return function()
  local mc = require("multicursor-nvim")
  local set = vim.keymap.set
  local hl = vim.api.nvim_set_hl

  mc.setup()

  set({ "n", "x" }, "<c-k>", function()
    mc.lineAddCursor(-1)
  end)
  set({ "n", "x" }, "<c-j>", function()
    mc.lineAddCursor(1)
  end)
  set({ "n", "x" }, "<c-n>", function()
    mc.matchAddCursor(1)
  end)
  set({ "n", "x" }, "<c-s>", function()
    mc.matchSkipCursor(1)
  end)

  mc.addKeymapLayer(function(layer_set)
    layer_set({ "n", "x" }, "<c-h>", mc.prevCursor)
    layer_set({ "n", "x" }, "<c-l>", mc.nextCursor)
    layer_set({ "n", "x" }, "<c-x>", mc.deleteCursor)
    layer_set("n", "<esc>", function()
      if not mc.cursorsEnabled() then
        mc.enableCursors()
      else
        mc.clearCursors()
      end
    end)
  end)

  hl(0, "MultiCursorCursor", { reverse = true })
  hl(0, "MultiCursorVisual", { link = "Visual" })
  hl(0, "MultiCursorSign", { link = "SignColumn" })
  hl(0, "MultiCursorMatchPreview", { link = "Search" })
  hl(0, "MultiCursorDisabledCursor", { reverse = true })
  hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
  hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
end
