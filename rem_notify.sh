#!/usr/bin/env bash
# Display notification on the screen
# on click open wyrd in an xterm
echo "naughty.notify({run = function () awful.util.spawn(\"xterm -e bash -c 'wyrd'\") end,text = \"$*\",title = \"Reminder\",position = \"top_right\", timeout = 0,icon=\"/home/reussnerm/.config/awesome/icons2/AwakenIcon.png\", fg=\"#ffggcc\", bg=\"#bbggcc\",screen = 1, ontop = false})"| ~/.bin/dbus_wrapper_no_x.sh

#naughty.notify({
#	text = "notification",
#    title = "title",
#	position = "top_left"|"top_right"|"bottom_left"|"bottom_right",
#	timeout = 5,
#	icon="/path/to/image",
#	fg="#ffggcc",
#	bg="#bbggcc",
#	screen = 1,
#	ontop = false, 
#	run = function () awful.util.spawn("wicd-client") end
#})
#run = function () awful.util.spawn("xterm -e bash -c 'wyrd'") end
#awful.util.spawn("xterm -e bash -c 'wyrd'")

#hover_timeout: Delay in seconds after which hovered popup disappears. Default: nil
#ontop: Boolean forcing popups to display on top. Default: true
#height: Popup height. Default: nil (auto)
#width: Popup width. Default: nil (auto)
#icon_size: Desired icon size in px. Default: nil
#border_width: Border width. Default: 1
#border_color: Border color. Default: beautiful.border_focus or '#535d6c'
#run: Function to run on left click. Default: nil
#replaces_id: Replace the notification with the given ID
#callback: function that will be called with all arguments the notification will only be displayed if the function returns true note: this function is only relevant to notifications sent via dbus 
