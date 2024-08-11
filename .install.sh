pkg update && pkg upgrade 
pkg install vim curl wget git tree -y clang python zsh
echo "√ 已成功安装：vim,curl,wget,git,tree,-y,clang,python,zsh"
termux-setup-storage
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="random"' "$HOME/.zshrc"
echo "√ 已设置默认主题为'随机'"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
chsh -s zsh
$HOME/.termux/colors.sh
$HOME/.termux/fonts.sh
echo "√ 已完成字体设置"
sed -i '102ialias bak="sh /data/data/com.termux/files/home/.backup.sh"' "$HOME/.zshrc"
mv -R "$HOME/motd" "$PREFIX/etc/motd"
echo "√ 已完成启动页配置"
mv "$HOME/termux.properties" "$HOME/.termux/termux.properties"
echo "√ 已完成常用按键配置"
echo "√ 已完成vim编辑器配置"
echo "！重启Termux生效"