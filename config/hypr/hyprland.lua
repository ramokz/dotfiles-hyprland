-- Execute your favorite apps at launch
scrPath = "~/.config/hyprdots/scripts"

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("nextcloud")
	hl.exec_cmd("filen-desktop")
	hl.exec_cmd("solaar --window=hide")
	hl.exec_cmd("systemctl --user start elephant.service")
	hl.exec_cmd("walker --gapplication-service")

	hl.exec_cmd("dbus-update-activation-environment --systemd DISPLAY XAUTHORITY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("~/dotfiles-hyprland/HyprlandConfigTransfer.sh")
	hl.exec_cmd("xrandr --output \"DP-1\" --primary")
	hl.exec_cmd("flatpak run com.core447.StreamController -b")

	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")

	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 20")
end)

-- █▀▀ █▄░█ █░█
-- ██▄ █░▀█ ▀▄▀
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("SDL_VIDEODRIVER", "wayland,x11,windows")
hl.env("HYPRCURSOR_THEME", "MyCursor'")
hl.env("HYPRCURSOR_SIZE", "20")
hl.env("XCURSOR_SIZE", "4")
hl.env("GDK_SCALE", "1")


hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 0,
		border_size = 2,
		col = {
			active_border = { colors = { "rgb(F47C39)", "rgb(B1572B)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		layout = "dwindle"
	},
	input = {
		kb_layout = "gb,dk",
		kb_options = "grp:ctrls_toggle",
		"fnmode:inverse",
		-- kb_variant =,
		-- kb_model =
		-- kb_rules =

		follow_mouse = 1

		-- touchpad {
		--     natural_scroll = no
		-- }

		-- sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
	},

	decoration = {
		rounding         = 6,
		rounding_power   = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity   = 1.0,
		inactive_opacity = 0.85,

		shadow           = {
			enabled      = true,
			range        = 2,
			render_power = 3,
			color        = 0x1a1a1aee,
		},
		blur             = {
			enabled  = true,
			size     = 3,
			passes   = 1,
			vibrancy = 0.1696,
		},
	},

	xwayland = {
		force_zero_scaling = true
	},

	binds = {
		scroll_event_delay = 1
	}
})


require("modules.variables")
require("modules.keybindings")
require("modules.monitors")
require("modules.animations")
require("modules.windowrules")
