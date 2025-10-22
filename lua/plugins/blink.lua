return {
  "Saghen/blink.cmp",
  dependencies = {
    "Kaiser-Yang/blink-cmp-avante",
  },
  opts = {
    sources = {
      default = { "avante", "lsp", "path", "buffer" },
      providers = {
        avante = {
          module = "blink-cmp-avante",
          name = "Avante",
          opts = {},
        },
      },
    },
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
