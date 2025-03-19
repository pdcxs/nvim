-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font:h18"
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_scale_factor = 1.0
end

local opt = vim.opt

opt.wrap = true
opt.spelllang = { "en", "cjk" }
opt.linebreak = false
