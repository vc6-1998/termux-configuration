termux-setup-storage
cp -R $HOME /storage/emulated/0/termux.bak.$(date +%Y.%m.%d-%H:%M:%S)
echo "√ 已成功备份HOME目录文件至 \n\"/storage/emulated/0/termux.bak.日期-时间\" \n文件夹"
