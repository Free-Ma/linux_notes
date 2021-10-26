## 什么是vim宏(macro)

- 宏可以看成是一系列命令的集合
- 可以使用宏**录制**一系列操作，然后用于**回放**
- 宏可以非常方便地把一系列命令用在多行文本上

## 如何使用

- vim使用q来录制，同时也是q结束录制
- 使用`q{register}` 选择要保存的寄存器，把录制的命令保存其中

**我们要把空格后面的文本都用单引号包围起来**

```markdown
a append
i insert
o open a line below
a append
i insert
o open a line below
```

光标移到最上面一行

`qa0f<space>a'<ESC>A'<ESC>jq`

上面的命令把操作录制在了a寄存器中

**操作详情**：先去行首查找空格并追加单引号，再回到`normal`模式，在行尾追加单引号，最后去下一行, `5@a`执行5次寄存器中的操作

```markdown
a 'append'
i 'insert'
o 'open a line below'
a 'append'
i 'insert'
o 'open a line below'
```

**上面的效果也可以不用宏来操作**

1. `V` 选中所有需要编辑的行
2. `:normal f<space>a'`,此时所有空格前面都加上了单引号，接下来给行尾添加
3. `:<Ctrl>p`, 此时会重复输入上面的命令，把`f<space>a'`换成`A'`

---

