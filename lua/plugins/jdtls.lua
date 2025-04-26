return {
  "mfussenegger/nvim-jdtls",
  opts = function(_, opts)
    opts.root_dir = function(fname)
      return vim.fn.getcwd() -- 直接返回 Neovim 的当前工作目录
    end

    opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
      java = {
        project = {
          referencedLibraries = {
            "lib/*.jar",
          },
        },
      },
    })
    return opts
  end,
}
