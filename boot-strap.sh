yay -S polybar ranger picom kitty herbstluftwm rofi dunst nitrogen spectacle nodejs npm neovim ueberzug sddm-sugar-candy-git
sudo rm -rf /usr/share/sddm/themes/sugar-candy
sudo cp -r ~/.config/herbstluftwm/sddm/sugar-candy /usr/share/sddm/themes
sudo cp -r ~/.config/herbstluftwm/sddm/sddm.conf /etc/
git clone https://github.com/Nhuengzii/neovim-config.git ~/.config/nvim
for i in polybar ranger picom kitty dunst nitrogen;do
    ln -s ~/.config/herbstluftwm/$i ~/.config
done
sudo cp -r ~/.config/herbstluftwm/fonts/cascadiacode /usr/share/fonts/
fc-cache -fv
