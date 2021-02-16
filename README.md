# vc6之Termux神器配置
该脚本由`vc6`制作，用于Termux一键配置，无需一条条敲指令

## 配置方法
为什么不用sh直接执行github脚本？因为大概率会出现403错误。
* 在下面网盘链接下载`install.sh`文件
* `install.sh` 网盘下载地址：[!链接已失效](https://pan.baidu.com/s/1YfVblDYroeWIMiXj89FtMQ)，提取码：15bn
* 使用文件管理器将文件挪到主目录下：`/storage/emulated/0/`
（如果你把文件放在其他目录里，后面的sh也要指到你放的目录里）
* 打开Termux，执行
`termux-setup-storage`
* 允许权限
* 再执行`sh /storage/emulated/0/install.sh`
* 等待大约5分钟就可配置好，建议不要同时用其他软件使用网络，尽量让Termux前台运行，以免下载速度变慢

## 脚本包括
* 自动更换清华源
* 安装vim,curl,wget,git,tree,clang,python,-y等工具
* 安装zsh插件与彩色主题字体
* 自定义启动页
* 自定义屏幕下方快捷按键
* 配置vim编辑器（主要为C语言服务）：按F5一键保存，C/C++文件会自动保存编译运行;（方/花/尖）括号和引号自动补全等功能
* 执行`bak`命令一键备份HOME目录到外部存储
