# /bin/bash
yay -S fcitx5-im fcitx5-rime rime-cloverpinyin fcitx5-pinyin-zhwiki fcitx5-material-color
echo 'GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=@im=fcitx
SDL_IM_MODULE DEFAULT=fcitx' > ~/.pam_environment
mkdir -p ~/.local/share/fcitx5/rime/
echo 'patch:
"menu/page_size": 5
schema_list:
  - schema: clover' > ~/.local/share/fcitx5/rime/default.custom.yaml
