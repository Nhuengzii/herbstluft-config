for i in polybar ranger picom kitty dunst nitrogen;do
    ln -s ~/.config/herbstluftwm/$i ~/.config
done
sudo ln -s ~/.config/herbstluftwm/fonts/cascadiacode /usr/share/fonts/
fc-cache -fv
