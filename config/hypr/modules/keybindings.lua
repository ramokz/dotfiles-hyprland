require("modules.variables")

local scrPath = "~/.config/hyprdots/scripts"

--------------------
---- Main Utils ----
--------------------
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exit())
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(files))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(term .. " -e yazi"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + W", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + CONTROL + ESCAPE", hl.dsp.exec_cmd("kitty -e btop"))
hl.bind(mainMod .. " + CONTROL + SHIFT + ESCAPE", hl.dsp.exec_cmd("killall waybar || waybar"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))


------------------
---- Launcher ----
------------------
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("walker"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("walker --modules files"))


--------------
---- Apps ----
--------------
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd(mainBrowser))
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.exec_cmd(devBrowser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(password))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("godot"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(mail))


----------------------
---- Color Picker ----
----------------------
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"))


----------------
---- Volume ----
----------------
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))


--------------
---- Zoom ----
--------------
local MAX_ZOOM = 5
local MIN_ZOOM = 1
local ZOOM_TOGGLE_FACTOR = 1.5

---@param offset number
---@return nil
local function zoom(offset)
	local current = hl.get_config("cursor.zoom_factor")
	if offset ~= nil then
		current = current + offset
	elseif current ~= MIN_ZOOM then
		current = MIN_ZOOM
	else
		current = ZOOM_TOGGLE_FACTOR
	end
	current = math.max(MIN_ZOOM, math.min(MAX_ZOOM, current))
	hl.config({ cursor = { zoom_factor = current } })
end

-- hl.bind("SUPER + Z", zoom)
hl.bind(mainMod .. " + SHIFT + mouse_down", function()
	zoom(0.5)
end)
hl.bind(mainMod .. " + SHIFT + mouse_up", function()
	zoom(-0.5)
end)

hl.bind(mainMod .. " + SHIFT + mouse_up", hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1"))
hl.bind(mainMod .. " + SHIFT + mouse_down", hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1"))
-- bind = $mainMod SHIFT, mouse_up, exec, hyprctl -q keyword cursor:zoom_factor 1
-- bind = $mainMod SHIFT, mouse_down, exec, hyprctl -q keyword cursor:zoom_factor 1
--
hl.bind(mainMod .. " + SHIFT + CTRL + mouse_up", function()
	zoom(MAX_ZOOM)
end)


hl.bind(mainMod .. " + SHIFT + CTRL + mouse_up", hl.dsp.exec_cmd(" ~/.config/hypr/zoom_toggle.sh"))
hl.bind(mainMod .. " + SHIFT + CTRL + mouse_down", hl.dsp.exec_cmd(" ~/.config/hypr/zoom_toggle.sh"))

--------------------
---- Move focus ----
--------------------
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))



----------------------
---- Move windows ----
----------------------
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

--------------------------------------------
---- Scroll through existing workspaces ----
--------------------------------------------
-- hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "+1" }))
-- hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "-1" }))

-----------------------------------------------------------------
---- Move/resize windows with mainMod + LMB/RMB and dragging ----
-----------------------------------------------------------------
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + P", hl.dsp.window.pin())
hl.bind(mainMod .. " + H", hl.dsp.window.resize({ x = 1920, y = 1080 }))
hl.bind(mainMod .. " + C", hl.dsp.window.center())


-- bind = $mainMod, F1, exec, ~/.config/hypr/gamemode.sh
hl.bind(mainMod .. " + F1", hl.dsp.exec_cmd("~/.config/hypr/gamemode.sh"))
