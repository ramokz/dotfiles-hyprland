---------------------------
----- Animation Curves ----
---------------------------

hl.curve("pan", {
	type = "bezier",
	points = {
		{ 0.8, 0.8 },
		{ 0.2, 0.9 }
	}
})

hl.curve("winIn", {
	type = "bezier",
	points = {
		{ 0.5, 0.5 },
		{ 0.8, 1.3 }
	}
})

hl.curve("winOut", {
	type = "bezier",
	points = {
		{ 0.3, -0.3 },
		{ 0,   0 }
	}
})


---------------------
----- Animations ----
---------------------
hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 1,
	bezier = "winIn"
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 1,
	bezier = "winIn"
})

hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 1,
	bezier = "pan"
})

hl.animation({
	leaf = "border",
	enabled = true,
	speed = 1,
	bezier = "default"
})

hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 1,
	bezier = "default"
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 4,
	bezier = "default"
})
