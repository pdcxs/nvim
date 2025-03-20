-- some snacks options
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = function(_, opts)
    -- diable smooth scroll for neovide
    if vim.g.neovide then
      opts.scroll = { enabled = false }
    end
  end,
}
