sudo pacman -S polybar ranger picom kitty herbstluftwm rofi dunst nitrogen spectacle nodejs npm neovim
git clone https://github.com/Nhuengzii/neovim-config.git ~/.config/nvim
for i in polybar ranger picom kitty dunst nitrogen;do
    ln -s ~/.config/herbstluftwm/$i ~/.config
done
sudo cp -r ~/.config/herbstluftwm/fonts/cascadiacode /usr/share/fonts/
fc-cache -fv
