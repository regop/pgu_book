## 前言
这个项目是记录《Programming from the Ground Up》（中文译名《深入理解程序设计 --使用Linux汇编语言》）学习过程的。

学习汇编的主要目的是为了以后学习linux内核打下基础。学习完成的目标是可以看懂汇编。


## 项目组织
根据章节建立文件夹，比如第二章的内容在文件夹`ch02`中

`review.md`里面记录是课后题的解答，不保证正确。
`review` 文件夹存放课后题的代码

练习主要包括`Know the Concepts` 和`Use the Concepts`两个部分，不包括`Going Further`

## 后记
----
第61页，有个错误。

```C
movl 8(%ebp), %ebx #put first argument in %eax

```
实际上，应该是 `put first argument in %ebx`

