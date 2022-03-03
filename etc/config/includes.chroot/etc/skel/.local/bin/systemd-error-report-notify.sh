#!/bin/sh
echo $(systemctl --state=failed) | while read SYSTEMD_ERROR; do notify-send "$SYSTEMD_ERROR"; done
