return {
  "mrdwarf7/lazyjui.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      -- Default is <Leader>jj
      -- An example of a custom mapping to open the interface
      "<Leader>gj",
      function()
        require("lazyjui").open()
      end,
    },
  },
  -- You can also simply pass `opts = true` or `opts = {}` and the default options will be used
  ---@type lazyjui.Opts
  opts = {
    -- Optionally (default):
    border = {
      chars = { "", "", "", "", "", "", "", "" }, -- either set all to empty to remove the entire outer border (or nil/{})
      -- Use custom set of border chars (must be 8 long)
      -- border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
      thickness = 0, -- This handles the border of the 'outer' window it's nested inside, generally this is invisible
      -- See `:h nvim_win_set_hl_ns()` and associated docs for more details
      -- previous option was: "FloatBorder:LazyJuiBorder,NormalFloat:LazyJuiFloat", -- up to you how to set
      winhl_str = "",
    },

    -- The below options will now produce a warning advising to use the above syntax instead.
    -- they'll work for a while; but note that the internal mapping will be removed in the future.
    ---@deprecated use 'opts.border.chars' instead
    -- border_chars = {},
    ---@deprecated use 'opts.border.thickness' instead
    -- border_thickness = 0,
    ---@deprecated use 'opts.border.winhl_str' instead
    -- border_winhl_str = "FloatBorder:LazyJuiBorder,NormalFloat:LazyJuiFloat",

    -- Support for custom command pass-through
    -- In this example, we use the revset `all()` command
    --
    -- Will default to just `jjui`
    cmd = { "jjui" },
    height = 0.8, -- default is 0.8,
    width = 0.9, -- default is 0.9,
    winblend = 0, -- default is 0 (fully opaque). Set to 100 for fully transparent (not recommended though).
    -- hide_only = false, -- This is **experimental** and is subject to changing, currently not available
    use_default_keymaps = true, -- setting this to false will result in no default mappings at all
  },
}
