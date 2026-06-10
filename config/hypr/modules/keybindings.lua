require("variables")

local scrPath = "~/.config/hyprdots/scripts"

--------------------
---- Main Utils ----
--------------------
hl.bind(mainMod + " + RETURN", 							hl.dsp.exec_cmd(term)
hl.bind(mainMod + " + SHIFT + Q",					 	hl.dsp.exec_cmd("killactive")
hl.bind(mainMod + " + SHIFT + M",					 	hl.dsp.exec_cmd("exit")
hl.bind(mainMod + " + N", 								hl.dsp.exec_cmd(files)
hl.bind(mainMod + " + Y", 								hl.dsp.exec_cmd(term + " -e yazi")
hl.bind(mainMod + " + F", 								hl.dsp.exec_cmd("fullscreen")
hl.bind(mainMod + " + W", 								hl.dsp.exec_cmd("togglefloating")
hl.bind(mainMod + " + P", 								hl.dsp.exec_cmd("pseudo")
hl.bind(mainMod + " + J", 								hl.dsp.exec_cmd("togglesplit")
hl.bind(mainMod + " + CONTROL ESCAPE", 					hl.dsp.exec_cmd("kitty -e btop # pkill -x btop || $scrPath/sysmonlaunch.sh")
hl.bind(mainMod + " + CONTROL SHIFT ESCAPE", 			hl.dsp.exec_cmd("killall waybar || waybar")
hl.bind(mainMod + " + L",					 			hl.dsp.exec_cmd("hyprlock")

------------------
---- Launcher ----
------------------
hl.bind(mainMod + " + D",					 			hl.dsp.exec_cmd("walker")
hl.bind(mainMod + " + K",					 			hl.dsp.exec_cmd("walker --modules files")

--------------
---- Apps ----
--------------
hl.bind(mainMod + " + Z",								hl.dsp.exec_cmd(mainBrowser)
hl.bind(mainMod + " + SHIFT + Z", 						hl.dsp.exec_cmd(devBrowser)
hl.bind(mainMod + " + E",					 			hl.dsp.exec_cmd(editor)
hl.bind(mainMod + " + SHIFT + P",			 			hl.dsp.exec_cmd(password)
hl.bind(mainMod + " + G",			 					hl.dsp.exec_cmd("godot")
hl.bind(mainMod + " + M",			 					hl.dsp.exec_cmd(mail)

----------------------
---- Color Picker ----
----------------------
hl.bind(mainMod + " + SHIFT + C",			 			hl.dsp.exec_cmd("hyprpicker -a")

-- Volume
hl.bind(XF86AudioRaiseVolume,			 				hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%")
hl.bind(XF86AudioLowerVolume,			 				hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%")
hl.bind(XF86AudioMute,			 						hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle")
hl.bind(XF86AudioPlay,			 						hl.dsp.exec_cmd("playerctl play-pause")
hl.bind(XF86AudioPause,			 						hl.dsp.exec_cmd("playerctl play-pause")
hl.bind(XF86AudioNext,			 						hl.dsp.exec_cmd("playerctl next")
hl.bind(XF86AudioPrev,			 						hl.dsp.exec_cmd("playerctl previous")


--------------
---- Zoom ----
--------------
hl.bind(mainMod + " + mouse_down",			 			hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')")
hl.bind(mainMod + " + mouse_up",			 			hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')")

-- bind = $mainMod SHIFT, mouse_up, exec, hyprctl -q keyword cursor:zoom_factor 1
-- bind = $mainMod SHIFT, mouse_down, exec, hyprctl -q keyword cursor:zoom_factor 1

-- bind = $mainMod CTRL SHIFT, mouse_up, exec, ~/.config/hypr/zoom_toggle.sh
-- bind = $mainMod CTRL SHIFT, mouse_down, exec, ~/.config/hypr/zoom_toggle.sh


-- Move focus
-- bind = $mainMod, left, movefocus, l
-- bind = $mainMod, right, movefocus, r
-- bind = $mainMod, up, movefocus, u
-- bind = $mainMod, down, movefocus, d

-- # Move windows
-- bind = $mainMod SHIFT, left, movewindow, l
-- bind = $mainMod SHIFT, right, movewindow, r
-- bind = $mainMod SHIFT, up, movewindow, u
-- bind = $mainMod SHIFT, down, movewindow, d

-- # Switch workspaces with mainMod + [0-9]
-- bind = $mainMod, 1, workspace, 1
-- bind = $mainMod, 2, workspace, 2
-- bind = $mainMod, 3, workspace, 3
-- bind = $mainMod, 4, workspace, 4
-- bind = $mainMod, 5, workspace, 5
-- bind = $mainMod, 6, workspace, 6
-- bind = $mainMod, 7, workspace, 7
-- bind = $mainMod, 8, workspace, 8
-- bind = $mainMod, 9, workspace, 9
-- bind = $mainMod, 0, workspace, 10

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- # Move active window to a workspace with mainMod + SHIFT + [0-9]
-- bind = $mainMod SHIFT, 1, movetoworkspace, 1
-- bind = $mainMod SHIFT, 2, movetoworkspace, 2
-- bind = $mainMod SHIFT, 3, movetoworkspace, 3
-- bind = $mainMod SHIFT, 4, movetoworkspace, 4
-- bind = $mainMod SHIFT, 5, movetoworkspace, 5
-- bind = $mainMod SHIFT, 6, movetoworkspace, 6
-- bind = $mainMod SHIFT, 7, movetoworkspace, 7
-- bind = $mainMod SHIFT, 8, movetoworkspace, 8
-- bind = $mainMod SHIFT, 9, movetoworkspace, 9
-- bind = $mainMod SHIFT, 0, movetoworkspace, 10

-- # Scroll through existing workspaces with mainMod + scroll
-- # bind = $mainMod, mouse_down, workspace, e+1
-- # bind = $mainMod, mouse_up, workspace, e-1

-- # Move/resize windows with mainMod + LMB/RMB and dragging
-- bindm = $mainMod, mouse:272, movewindow
-- bindm = $mainMod, mouse:273, resizewindow

-- bind = $mainMod, H, resizeactive, exact 1920 1080
-- bind = $mainMod, T, pin
-- bind = $mainMod, C, centerWindow


-- bind = $mainMod, F1, exec, ~/.config/hypr/gamemode.sh
