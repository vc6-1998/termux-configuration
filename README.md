# Termux神器配置
该脚本由`vc6`制作，用于Termux一键配置
## 配置方法
打开termux，运行如下代码：
```sh -c "$(curl -fsSL https://raw.kkgithub.com/vc6-1998/termux-configuration/master/.install.sh)"```
## 脚本内容
* 安装vim,curl,wget,git,tree,clang,python,-y等工具
* 安装zsh插件与彩色主题字体
* 自定义启动页
* 自定义屏幕下方快捷按键
* 配置vim编辑器：
  + 按F5一键保存，其中C/C++/Java/python文件还会自动编译运行
  + （方/花/尖）括号和引号自动补全
  +  Ctrl+A/C/X/V 四种常见快捷键
* 建立手机外部存储链接，路径为```$HOME/storage/shared/```
* 执行`bak`命令一键备份$HOME目录到外部存储
