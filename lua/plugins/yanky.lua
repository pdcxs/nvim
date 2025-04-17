return {
  "gbprod/yanky.nvim",
  opts = {
    picker = {
      select = {
        -- fix put action
        action = function(...)
          vim.cmd("normal! l")
          require("yanky.picker").actions.put("p")(...)
        end,
      },
    },
  },
}
