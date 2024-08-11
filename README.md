# Termux神器配置
该脚本由`vc6`制作，用于Termux一键配置

## 配置方法
为什么不用sh直接执行github脚本？因为大概率会出现403错误。
* 使用文件管理器将文件挪到主目录下：`/storage/emulated/0/`
（如果你把文件放在其他目录里，后面的sh也要指到你放的目录里）
* 打开Termux，执行
`termux-setup-storage`
* 允许权限
* 再执行`sh /storage/emulated/0/install.sh`
* 等待大约5分钟就可配置好，建议不要同时用其他软件使用网络，尽量让Termux前台运行，以免下载速度变慢

## 脚本内容
* 安装vim,curl,wget,git,tree,clang,python,-y等工具
* 安装zsh插件与彩色主题字体
* 自定义启动页
* 自定义屏幕下方快捷按键
* 配置vim编辑器：
  ① 按F5一键保存，其中C/C++/Java/python文件还会自动编译运行
  ② 添加（方/花/尖）括号和引号自动补全
  ③ 添加了 Ctrl+A/C/X/V 四种常见快捷键
* 执行`bak`命令一键备份HOME目录到外部存储
