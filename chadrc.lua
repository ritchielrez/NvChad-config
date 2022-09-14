-- Chadrc overrides this file

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme = "gruvbox_material", -- default theme
  transparency = false,
}

M.plugins = {
  ["NvChad/base46"] = false,
  ["ritchielrez/base46"] = {
    config = function()
      local ok, base46 = pcall(require, "base46")

      if ok then
        base46.load_theme()
      end
    end,
  },

  ["sainnhe/gruvbox-material"] = {},
  ["nvim-treesitter/playground"] = {},

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.plugins.lspconfig")
    end,
  },
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
