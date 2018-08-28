> ## nginx-local-test-shell
>
> macOS 系统下自动添加 nginx 本地测试环境的脚本，支持通过定制域名和测试文件目录生成 conf 文件并将定制域名绑定127.0.0.1追加到 hosts 文件中。
>
> ## 相关环境及配置
> - 系统： macOS
> - nginx版本：1.15.2
>   改脚本执行条件为`nginx.conf`文件已添加可用用户名及用户组
>
> ## 运行方法
> - `git clone`克隆项目到本地
> - 终端切换到项目所在的文件夹
>   `cd [项目所在文件夹]`
> - 设置环境变量
>    `export SERVERS_PATH=[自定义 xxx.conf 文件放置路径]`
>    如果不设置这个服务路径的环境变量系统将默认把`xxx.conf `文件放置在`/usr/local/etc/nginx/servers`目录下
> - 运行文件
>   `sudo -E bash ./nginx.sh 测试域名 测试文件所在路径`
>   测试域名，测试文件所在路径为必须传入的自定义参数，对应`nginx.sh`文件中的`serverName`和`proxyPass`
> ## License
> [MIT](https://github.com/avocadowang/nginx-local-test-shell/blob/master/LICENSE)