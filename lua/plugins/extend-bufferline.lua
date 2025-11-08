return {
  "akinsho/bufferline.nvim",
  keys = {
    {
      "L",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "Next buffer",
    },
    {
      "H",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "Previous buffer",
    },
    {
      "]b",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "Next buffer",
    },
    {
      "[b",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "Previous buffer",
    },
  },
  opts = {
    options = {
      custom_filter = function(buf, _)
        -- Directory buffers appears after restoring the session and
        -- they should be ignored.
        local buf_name = vim.api.nvim_buf_get_name(buf)
        local state = vim.uv.fs_stat(buf_name)
        if state and state.type == "directory" then
          return false
        end

        return true
      end,
    },
  },
}
