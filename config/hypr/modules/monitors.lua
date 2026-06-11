local asusmonitor = "desc:ASUSTek COMPUTER INC PA32UCDMR TCLMSB002800"
local dellMonitor = "desc:Dell Inc. DELL U2723QE C9D9FH3"

-----------------------
---- Monitor Setup ----
-----------------------
hl.monitor({
	output = asusmonitor,
	mode = "3840x2160@240",
	scale = 1,
	2,
	bitdepth = 10,
	cm = "hdr",
	sdrbrightness = 1.3,
	sdrsaturation = 1.2,
})

hl.monitor({
	output = dellMonitor,
	mode = "3840x2160@60",
	position = "auto-center-right",
	scale = 1.5,
	transform = 1
})

-------------------------
---- Workspace Rules ----
-------------------------
hl.workspace_rule({
	workspace = "1",
	monitor = asusmonitor,
	default = true
})

hl.workspace_rule({
	workspace = "r[2-5]",
	monitor = asusmonitor,
})

hl.workspace_rule({
	workspace = "6",
	monitor = dellMonitor
})

-- workspace = 1, monitor:DP-1, default:true
-- workspace = 2, monitor:DP-1
-- workspace = 3, monitor:DP-1
-- workspace = 4, monitor:DP-1
-- workspace = 5, monitor:DP-1
-- # workspace = 6, monitor:DP-4
-- # workspace = 10, monitor:HDMI-A-1
