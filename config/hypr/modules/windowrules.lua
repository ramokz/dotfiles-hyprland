local opacity = 0.95
local floatWindowSize = { 1200, 800 }

hl.window_rule({
	name = "term",
	match = {
		class = term
	},
	float = true,
	opacity = opacity,
	size = { 1280, 960 }
})

-- hl.window_rule({
-- 	name = "librewolf",
-- 	match = {
-- 		class = mainBrowser
-- 	},
-- 	opacity = opacity,
-- })


hl.window_rule({
	name = "steam",
	match = {
		class = "steam"
	},
	opacity = opacity,
})


hl.window_rule({
	name = "password-manager",
	match = {
		class = "org.keepassxc.KeePassXC"
	},
	size = { 1200, 800 },
	center = true,
	float = true
})

hl.window_rule({
	name = "flat-seal",
	match = {
		class = "com.github.tchx84.Flatseal"
	},
	size = { 1200, 800 },
	center = true,
	float = true
})

hl.window_rule({
	name = "OBS",
	match = {
		class = "com.obsproject.Studio"
	},
	size = { 1200, 800 },
	opacity = 0.9,
	center = true,
	float = true
})

hl.window_rule({
	name = "pwvucontrol",
	match = {
		class = "com.saivert.pwvucontrol"
	},
	size = { 1200, 800 },
	opacity = 0.9,
	center = true,
	float = true
})

hl.window_rule({
	name = "imv",
	match = {
		class = "imv"
	},
	size = { 1200, 800 },
	center = true,
	float = true
})

hl.window_rule({
	name = "file-manager",
	match = {
		class = "org.gnome.Nautilus"
	},
	size = { 1200, 800 },
	opacity = 0.9,
	float = true
})

hl.window_rule({
	name = "signal",
	match = {
		class = "Signal"
	},
	size = { 1200, 800 },
	opacity = 0.9,
	float = true
})

hl.window_rule({
	name = "vlc",
	match = {
		class = "vlc"
	},
	center = true,
	float = true
})

hl.window_rule({
	name = "mpv",
	match = {
		class = "mpv"
	},
	float = true
})

hl.window_rule({
	name = "converseen",
	match = {
		class = "net.fasterland.converseen"
	},
	size = { 1200, 800 },
	center = true,
	float = true
})


hl.window_rule({
	name = "localsend",
	match = {
		class = "localsend"
	},
	size = { 1200, 800 },
	center = true,
	float = true
})

hl.window_rule({
	name = "planify",
	match = {
		class = "io.github.alainm23.planify"
	},
	size = floatWindowSize,
	float = true,
	center = true
})


local opacityClasses = { mainBrowser, "discord", "Webcord", "obsidian", "Brave-browser", "io.github.alainm23.planify" }

for i = 1, #opacityClasses do
	hl.window_rule({
		name = opacityClasses[i],
		match = {
			class = opacityClasses[i]
		},
		opacity = opacity,
	})
end
