> 作为一个前端，之前对 nginx了解很少 。最近学习了 mac 下 终端配置nginx 本地测试环境，完全通过终端输入命令行代替手动操作，感觉效（bi）率（ge）提升了好多，get 到这一技能之后又忍不住想，能不能把在终端里一行一行敲的命令通过一种方法将他们集合起来，仅通过一个操作就将他们全部执行，进一步提升工作效率？这就是我们今天要介绍的主角——shell。
## 一.为什么使用 shell？
- 简单性 — 使用shell进行程序设计的原因之一是，你可以快速、简单地完成编程。
- 可移植性 — shell也非常适合于编写一些执行相对简单的任务的小工具，因为它们更强调的是易于配置、易于维护和可移植性。
- 进程控制 — 可以使用shell对进程控制进行组织，使命令按照预定顺序在前一阶段命令成功完成的前提下顺序执行。
  参考自[图灵社区-linux 程序设计（第四版）](http://www.ituring.com.cn/book/miniarticle/20539)
  当然还有一点，效（zhuang）率（bi）
  ![image.png](https://upload-images.jianshu.io/upload_images/1808957-91caf13806ea8f96.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
## 二.相关环境及配置
- 系统： macOS
- nginx版本：1.15.2
## 三.项目结构 
项目参考地址： **[nginx-local-test-shell](https://github.com/avocadowang/nginx-local-test-shell)**

```
|——nginx.sh
|——changelog.md
|——readme.md
```
- nginx.sh: shell 脚本文件
- changelog.md: 记录每次自己项目的改变等
- readme.md: 介绍项目相关 balabala~~
## 四.运行
1.终端切换到项目所在的文件夹
`cd [项目所在文件夹]`
2.设置环境变量
 `export SERVERS_PATH=[自定义 xxx.conf 文件放置路径]`
如果不设置这个服务路径的环境变量系统将默认把`.conf `文件放置在`/usr/local/etc/nginx/servers`目录下
3.运行文件
`sudo -E bash ./nginx.sh 测试域名 测试文件所在路径`
因为自定义测试域名，测试文件所在路径，所以要将这两个参数传入。
### 以上即为一个nginx 本地测试脚本的使用过程



