set laptop_display_name to "Built-in Retina Display"

tell application "System Preferences"
	reveal anchor "displaysDisplayTab" of pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell process "System Preferences"
		
		tell window laptop_display_name
			tell tab group 1
				tell group 1
					set laptop_brightness to value of slider "Brightness:"
				end tell
			end tell
		end tell
		
		
		tell (every window where name is not laptop_display_name)
			tell tab group 1
				tell group 1
					set value of slider "Brightness:" to laptop_brightness
				end tell
			end tell
		end tell
		
	end tell
end tell

quit application "System Preferences"