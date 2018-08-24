#!/bin/sh
#nginx.conf所在路径
nginxConfPath=/usr/local/etc/nginx
#servers所在路径
serversPath=$nginxConfPath/servers
#系统hosts文件路径
hostsFile=/private/etc/hosts

serverName=$1
proxyPass=$2

showHelp(){
	cat <<EOF
	请按照如下格式调用
	addhost 域名 域名所在网站路径
EOF
}

if [ "serverName" = '' ]; then
	echo '没有输入域名'
	showHelp
	exit 1
fi

if [ "proxyPass" = '' ]; then
	echo '没有输入域名对应的文件路径'
	showHelp
	exit 1
fi

if [ ! -d $nginxConfPath ]; then
	echo "$nginxConfPath 找不到"
	exit 2
fi

if [ ! -d $serversPath ]; then
	echo "$serversPath 找不到"
	exit 2
fi

if [ ! -f $hostsFile ] ; then
	echo "$hostsFile 找不到"
	exit 2
fi
#追加用户名到conf文件
#echo 'user $userName userStaff' >> $nginxConfPath/nginx.conf

echo '写入conf文件'
cat <<EOF >$serversPath/$serverName.conf
	server
	{

    listen 80;
    server_name $serverName;
        location / {
                add_header Cache-Control no-cache;
                index index.html index.htm index.php;
                root $proxyPass;
        }

    access_log  /Users/wangzhidong/logs/nginx/access.log;
	}
EOF

echo 127.0.0.1 $serverName >> $hostsFile
