local asusmonitor = "ASUSTek COMPUTER INC PA32UCDMR TCLMSB002800"
local dellMonitor = "Dell Inc. DELL U2723QE C9D9FH3"


hl.monitor({
	description = asusmonitor,
	mode = "3840x2160@240",
	position = "0x0",
	scale = 1,
	bitdpth = 10,
	cm = "hdr"
})

hl.monitor({
	description = dellMonitor,
	mode = "3840x2160@60",
	position = "3840x0",
	scale = 1,
	transform = 1
})

hl.workspace_rule({
	workspace = "1", -- r[1-5]
	monitor = dellMonitor,
	default = true
})

hl.workspace_rule({
	workspace = "6",
	monitor = "desc: " + dellMonitor,
})

-- # See https://wiki.hyprland.org/Configuring/Monitors/

-- workspace = 1, monitor:DP-1, default:true
-- workspace = 2, monitor:DP-1
-- workspace = 3, monitor:DP-1
-- workspace = 4, monitor:DP-1
-- workspace = 5, monitor:DP-1
-- # workspace = 6, monitor:DP-4
-- # workspace = 10, monitor:HDMI-A-1
