return {
  "mrcjkb/haskell-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  version = "^3", -- Recommended
  -- branch = "2.x.x", -- Recommended
  config = function() -- Optional, see Advanced configuration
    vim.g.haskell_tools = {}
  end,
  -- load the plugin when opening one of the following file types
  ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
}
