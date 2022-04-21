# 首先要先同步时间
sudo ntpdate time.nist.gov
sudo timedatectl set-local-rtc 1 --adjust-system-clock
sudo hwclock --systohc
