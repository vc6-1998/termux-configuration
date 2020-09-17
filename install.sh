sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
pkg update
echo "√ 已成功更换清华源"
pkg install vim curl wget git tree -y clang python
echo "√ 已成功安装基本工具(vim,curl,wget,git,tree,-y,clang,python)"
termux-setup-storage

apt install zsh
echo "√ 已成功安装zsh插件"
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1
mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"
git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="random"' "$HOME/.zshrc"
echo "√ 已设置默认主题为 随机"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

chsh -s zsh

echo "√ 已完成oh-my-zsh的安装 \n现在选择您的背景颜色~"
$HOME/.termux/colors.sh
echo "现在选择您的字体~"
$HOME/.termux/fonts.sh
git clone https://github.com/vc6-1998/termux_configuration.git "$PREFIX/termux_configuration" --depth 1
cp -R "$PREFIX/termux_configuration/motd" "$PREFIX/etc/motd"
echo "√ 已完成配置启动页"
cp -R "$PREFIX/termux_configuration/termux.properties" "$HOME/.termux/termux.properties"
echo "√ 已完成配置常用按键"
cp -R "$PREFIX/termux_configuration/.vimrc" "$HOME/.vimrc"
echo "√ 已完成配置vim编辑器"
echo "！重启Termux生效"
