yay -S polybar ranger picom kitty herbstluftwm rofi dunst nitrogen nodejs npm neovim ueberzug docker brightnessctl go github-cli zsh cargo lazygit --noconfirm
sudo systemctl enable docker
sudo usermod -aG docker $USER
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/Nhuengzii/astronvim-config.git ~/.config/nvim/lua/user
for i in polybar ranger picom kitty dunst nitrogen rofi;do
    ln -s ~/.config/herbstluftwm/$i ~/.config
done
sudo cp -r ~/.config/herbstluftwm/fonts/cascadiacode /usr/share/fonts/
fc-cache -fv
git config --global user.email "32nhueng@gmail.com"
git config --global user.name "Nhuengzii"
git config --global init.defaultBranch main
