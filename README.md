# vc6之Termux神器配置
该脚本由`vc6`制作，用于Termux一键配置，无需一条条敲指令

使用方法：由于github直接执行脚本经常出现443的拒绝访问错误，所以请在网盘中下载`install.sh`，将其手动移动到主目录`/storage/emulated/0/`下，执行 `sh /storage/emulated/0/install.sh` 即可

脚本包括：
* 自动更换清华源
* 安装vim,curl,wget,git,tree,clang,python,-y等工具
* 安装zsh插件与彩色主题字体
* 自定义启动页
* 自定义屏幕下方快捷按键
* 配置vim编辑器（主要为C语言服务）：按F5一键保存，C/C++文件会自动保存编译运行，（方/花/尖）括号，引号自动补全
