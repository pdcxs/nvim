-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    -- 获取当前缓冲区文件名（不含路径）
    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
    -- 仅当文件名为 xmake.lua 时禁用格式化
    if filename == "xmake.lua" then
      vim.b.autoformat = false
    end
  end,
})

-- 停止 markdown 拼写检查
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
