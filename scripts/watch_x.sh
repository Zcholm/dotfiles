#!/bin/bash
# Monitor the gnome screensaver and run commands that it can undo otherwise,
# like removing xmodmap bindings.

# inspired by (more like shamelessly stolen):
# https://unix.stackexchange.com/questions/28181/how-to-run-a-script-on-screen-lock-unlock

on_screensaver_off () {
   xmodmap ~/.Xmodmap
}

on_screensaver_on () {
   echo "Placeholder for screensaver on" >> /dev/null
}


dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |
  while read x; do
    case "$x" in
       *"boolean false"*) on_screensaver_off;;
       *"boolean true"*) on_screensaver_on;;
    esac
  done

