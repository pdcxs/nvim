-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

if not vim.g.vscode then
  vim.cmd([[
    if has('win32') || has('win64')
      let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
      let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';Remove-Alias -Force -ErrorAction SilentlyContinue tee;'
      let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
      let &shellpipe  = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
      set shellquote= shellxquote=
    endif
    ]])

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

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
      vim.keymap.set("n", "<leader>cj", function()
        local filename = vim.fn.expand("%:t") -- 获取带扩展名的文件名
        local file_dir = vim.fn.expand("%:p:h")
        vim.cmd("w")
        local cmd = string.format("java %s", filename)
        Snacks.terminal(cmd, {
          cwd = file_dir,
          auto_close = false,
          interactive = true,
        })
      end, { desc = "Run Java File", buffer = true })
      vim.keymap.set("n", "<leader>cJ", function()
        local filename = vim.fn.expand("%:t") -- 获取带扩展名的文件名
        local classname = vim.fn.expand("%:t:r") -- 获取类名（无扩展名）
        local file_dir = vim.fn.expand("%:p:h")
        vim.cmd("w")
        local cmd = string.format("javac %s && java %s", filename, classname)
        Snacks.terminal(cmd, {
          cwd = file_dir,
          auto_close = false,
          interactive = true,
        })
      end, { desc = "Compile & Run Java File", buffer = true })
    end,
  })

  -- 停止 markdown 拼写检查
  -- vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

  -- use ruff other than pyright if possible
  require("lspconfig").pyright.setup({
    settings = {
      pyright = {
        -- Using Ruff's import organizer
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          -- Ignore all files for analysis to exclusively use Ruff for linting
          ignore = { "*" },
        },
      },
    },
  })
end
