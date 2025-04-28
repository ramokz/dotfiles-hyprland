dir=~/dotfiles-hyprland

# Copy Hyprland config
cp -r ~/.config/hypr/* $dir/config/hypr/

# Copy Waybar config
cp -r ~/.config/waybar/* $dir/config/waybar/

# Copy Profile config
cp /etc/environment $dir/etc/

# Copy zshrc config
cp ~/.zshrc $dir/

# Copy NeoVim config
cp -r ~/.config/nvim/* $dir/config/nvim/

# Copy Starship config
cp -r ~/.config/starship/* $dir/config/starship/

# Copy pacman config
cp /etc/pacman.conf $dir/etc/

# Copy MangoHud config
cp -r ~/.config/MangoHud/* $dir/config/MangoHud/

# Copy GTK3 configs
cp /etc/gtk-3.0/settings.ini $dir/etc/gtk-3.0

# Copy rofi configs
cp -r ~/.config/rofi/* $dir/config/rofi/

# Copy Zed configs
cp ~/.config/zed/settings.json $dir/config/zed/
cp ~/.config/zed/keymap.json $dir/config/zed/
cp ~/.config/zed/tasks.json $dir/config/zed/


###############
# Git Add Files
##############
cd $dir
git add .
git commit -m "Updated dotfiles"
