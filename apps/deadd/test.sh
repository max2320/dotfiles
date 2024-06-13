# systemctl --user stop notifications-tray
# systemctl --user start notifications-tray

kill  $(pidof deadd-notification-center)

notify-send a --hint boolean:deadd-notification-center:true \
                 string:type:reloadStyle

notify-send "And buttons" "Do you like buttons?" \
               --hint boolean:action-icons:true \
               --action yes:face-cool no:face-sick
notify-send "Icons are" "COOL" \
               --hint string:image-path:face-cool

notify-send "This notification has a progressbar" "33%" \
                         --hint int:has-percentage:33

notify-send "This notification has a progressbar" "33%" \
                         --hint int:value:33

notify-send "This notification has a slider" "33%" \
                         --hint int:has-percentage:33 \
                         --action changeValue:abc

sleep 0.3

kill -s USR1 $(pidof deadd-notification-center)

