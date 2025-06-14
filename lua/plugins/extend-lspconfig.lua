return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tinymist = {},
      pyright = {
        settings = {
          pyright = {
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              ignore = { "*" },
            },
          },
        },
      },
    },
  },
}
