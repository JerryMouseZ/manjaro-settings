最近经常重装系统，每次重装都得重新配一次环境，很烦，不如把环境配置都写在脚本里，这样可以快速安装。项目地址在https://github.com/JerryMouseZ/manjaro-settings

这些配置包括里基本的编程环境，常用的软件包括网易云音乐，中文拼音输入法，微信，科学上网以及vim，双系统时间的配置。可能还是有bug，不过尽量在微调的情况下能用吧。
manjaro是基于ArchLinux的一种Linux发行版，目前好像挺火的。因为之前笔记本Ubuntu一直有键盘隔半个小时卡一次的问题，忍了快一个学期了，还是换成来manjaro。想我这样经常折腾的人还是尽量减少耗在配环境上面的时间吧，尽量用基础配置，追求简单易用。

## 介质准备
manjaro有三中图形界面，因为从Ubuntu过来的，还是GNome会过度快一点，就选Gnome了。刻录U盘用的rufus。

## 安装过程
因为笔记本有英伟达显卡，驱动记得选non-free，后面就不会遇到什么问题了。如果喜欢重装的人其实应该手动分区的，这样可以保留之前的数据。不过我不太会，还是让他自动分区了，让他替换原本ubuntu的分区。

## 换源
sudo pacman-mirrors -i -c China -m rank

## 关于key的问题
ArchLinux使用签名验证软件包，如果遇到里key出现问题会非常麻烦，我整了一天没整好，最后直接选择放弃认证了。方法是修改/etc/pacman.conf
找到`SigLevel`所在的行，修改为
```
SigLevel = TrustAll
```

## 中文输入法
```Bash
source pinyin.sh
```


## vim配置
vim的配置基于vimplus项目魔改，因为作者好像很久不更新了，YCM会出现一点问题。
```
source vim.sh
```

## IDE
包括了snap的配置，以及clion, pycharm, vscode的安装。vscode的安装参考了v8的教程。
```
source ide.sh
```

## 博客
使用hexo搭建博客
```
source blog.sh
```

## docker
```Shell
source docker.sh
```

## 微信
因为arch官方的微信好像有一点问题，但是使用deepin-wine5构建的微信是没有bug的，所以选择自己构建。
```Shell
source wechat.sh
```

## 科学上网
目前linux最好用的客户端是v2raya
```
source v2ray.sh
```

## Gnome配置
有时候可能会遇到gnome的一些bug，比如布局修改不生效，以及任务栏找不到之类的，估计是缺少了gnome的插件
```
source gnome.sh
```

## 开机启动
在tweaks的startup中

## 双系统同步时间
取消Linux的+8，并同步到硬件时间
```
source time.sh
```

## 开机自动挂载硬盘
修改 `/etc/fstab`文件
```
# <file system>             <mount point>  <type>  <options>  <dump>  <pass>
UUID=7A90-4B4B                            /boot/efi      vfat    umask=0077 0 2
UUID=83a985ad-4bda-4d15-be60-1164b46bc29e /              ext4    defaults,noatime 0 1
UUID=D0405C2B405C1A94                     /run/media/jz/新加卷  ntfs  defaults 0 0
UUID=FAEC90F5EC90ACFF                     /run/media/jz/Windows-SSD  ntfs  defaults 0 0
```

## 学生优惠
详情可以看[链接](https://github.com/ivmm/Student-resources)，好用的有github学生包，包括copilot以及一些VPS的优惠券，还有JetBrain全家桶。
