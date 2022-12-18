dir=~/dotfiles-hyprland

# Copy Hyprland config
cp ~/.config/hypr/hyprland.conf $dir/config/hypr/

# Copy Hyprpaper config
cp ~/.config/hypr/hyprpaper.conf $dir/config/hypr/

# Copy Waybar config
cp ~/.config/waybar/* $dir/config/waybar/

# Copy Profile config
cp /etc/environment $dir/etc/

# Copy zshrc config
cp ~/.zshrc $dir/

# Copy NeoVim config
cp ~/.config/nvim/init.vim $dir/config/nvim/

# Copy Starship config
cp ~/.config/starship/config.toml $dir/config/starship

# Copy pacman config
cp /etc/pacman.conf $dir/etc/

# Copy MangoHud config
cp ~/.config/MangoHud/MangoHud.conf $dir/config/MangoHud

# Copy GTK3 configs
cp /etc/gtk-3.0/settings.ini $dir/etc/gtk-3.0

# Copy rofi configs
cp ~/.config/rofi/* $dir/config/rofi/


###############
# Git Add Files
##############
cd $dir
git add .
git commit -m "bot: Updated dotfiles"
