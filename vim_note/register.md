#### Insert模式下的复制粘贴

粘贴代码可能导致缩进混乱

需要使用`:set paste` 和 `:set nopaste`

#### vim 寄存器

vim在normal模式下复制/剪贴的内容都在vim寄存器里

- vim里操作的是寄存器而不是系统剪贴板
- 默认使用 `d` 或者 `y` 操作的内容都放到了**无名寄存器**
- 用`x` 删除一个字符放到寄存器里，然后`p` 粘贴，可以调换两字符

**vim不使用单一剪贴板，而是使用多组寄存器**

- 通过`“{register}`前缀可以制定`{register}`寄存器，不指定默认用无名寄存器
- 比如使用`“ayiw` 复制一个单词到寄存器`a` 中，`”bdd`删除当前行到寄存器`b` 中

**其他寄存器**

- 复制专用寄存器`“0` 使用`y`复制文本同时会被拷贝到复制寄存器`0`中
- 系统剪贴板 `“+` 复制到系统剪贴板
- 其他一些寄存器比如 `“%`但前文件名，`”.`上次插入的文本
- `:set clipboard=unnamed` 可以直接复制粘贴系统剪贴板的内容
  - `:echo has('clipboard')` 查看是否支持`clipboard` ， 输出1支持，0不支持

`archlinux` 不支持

- 可以查看[官方解决方案](https://wiki.archlinux.org/title/Vim#Installation), 最后决定用 `neovim` ，看一下`neovim`官方文档中 [unnamed 和 unnamedplus](https://neovim.io/doc/user/options.html#'clipboard') 的区别

- `neovim` 不支持，可以下载插件`sudo pacman -S xclip`, `xsel`据说有两个版本并且不兼容

- `neovim` ：`set clipboard+=unnamedplus`

