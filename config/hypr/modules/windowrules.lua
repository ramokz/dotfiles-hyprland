local opacity = 0.9

hl.window_rule({
	name = "term",
	match = {
		class = term
	},
	float = true,
	opacity = opacity,
	size = { 1280, 960 }
})

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
