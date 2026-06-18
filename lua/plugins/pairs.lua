return {
  {
    "nvim-mini/mini.pairs",
    config = function(_, opts)
      require("mini.pairs").setup(opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "rust",
        callback = function()
          vim.keymap.set("i", "'", "'", { buffer = true, silent = true })
        end,
      })
    end,
  },
}
