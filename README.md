# Neovim 配置文件

<!--toc:start-->
- [Neovim 配置文件](#neovim-配置文件)
  - [基本说明](#基本说明)
  - [安装方法](#安装方法)
  - [其它依赖](#其它依赖)
  - [多光标使用说明](#多光标使用说明)
  - [其他常用快捷键](#其他常用快捷键)
<!--toc:end-->

## 基本说明

本项目基于 [LazyVim 项目](https://github.com/LazyVim/LazyVim)，并加入了一些自定义的插件和主题。

## 安装方法

直接将本项目克隆至配置目录即可。不过除了 `neovim` 外，还需要安装一些额外软件(可选)。

1. 备份以前的配置（可选）

如果有以前的配置，建议进行备份：

```pwsh
cd $env:localappdata
mv nvim nvim.backup
```

2. 克隆至配置目录

```pwsh
cd $env:localappdata
git clone https://github.com/pdcxs/nvim.git
```

打开 `nvim`，即可以自动安装。

## 其它依赖

推荐安装以下软件

1. [LazyGit](https://github.com/jesseduffield/lazygit)
2. nodejs 与 yarn
3. [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
4. [NeoVide](https://neovide.dev/)

`markdown-preview` 插件需要安装 `nodejs` 和 `yarn`。如果安装后发现依然无法正常工作，可以执行 `<leader>l`  进入 Lazy 界面，选择 `markdown-preview`，按 `gb` 以进行重新安装。

## 多光标使用说明

采用以下快捷键可以添加多光标：

| 快捷键 | 说明 |
| --- | --- |
| `<leader>j` | 向下添加光标 |
| `<leader>k` | 向上添加光标 |
| `<leader>m` | 在选择区域所在的行添加光标 |
| `<leader>a` | 在所有匹配的位置添加光标 |
| `<leader>A` | 在所有与选中内容匹配的位置添加光标 |
| `gb` | 在当前匹配处添加光标并跳转至下一个匹配 |
| `gB` | 忽略当前匹配，直接跳转至下一个匹配 |
| `gl` | 切换光标的锁定 |

需要注意的是，在退出 `multi-curosr` 模式后，`<leader>` 键可能会不起作用，执行一下 `gl` 即可恢复正常。

## 其他常用快捷键

以下快捷键是 `LazyVim` 自带的，记录在这里以方便查阅。`<leader>?` 会打印出快捷键说明菜单，方便查找。

在`snacks explorer`中，按`?`是帮助。
`H`: 显示隐藏文件
`I`: 显示忽略文件
`i`: 进行搜索

在我的配置中，自动补全快捷键：
`<c-n> <c-p>` 用于选择下一个和上一个，回车用于确定选择，`tab` 用于snippets的跳转。

- `<leader>,` 搜索buffer
- explorer中按 `<c-v>` vsplit open
- `<c-/>` or `<leader>ft` toggle terminal: root directory
- `<leader>fT` terminal: current work directory
- `<leader>w`窗口相关操作
- `<leader>b`buffer相关操作
- 窗口与buffer相关操作：`o`：关闭其他，`d`：关闭当前
- 下一个 buffer 和上一个 buffer：`]b` `[b
- 退出软件：`<leader>qq`
- `<C-hjkl>` 移动到其他窗口
- `<leader>cs` 打开大纲视图
- `<leader>p` 打开粘贴历史
- `<leader>gg` 打开 `LazyGit`
- `<leader>e` 或者 `<leader>E` 打开文件浏览器，根目录与当前目录

