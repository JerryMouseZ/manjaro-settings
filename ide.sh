yay -S snapd
sudo systemctl enable snapd.service
sudo systemctl restart snapd.service
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install pycharm-professional --classic
sudo snap install clion --classic
./update-vscode.sh --auto
