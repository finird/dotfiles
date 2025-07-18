#!/usr/bin/env bash

# Get screensaver timeout (0 means off)
ss=$(xset q | awk '/timeout:/ {print $2}')

# Get DPMS status (Enabled/Disabled)
dpms=$(xset q | awk '/DPMS is/ {print $3}')

if [[ "$ss" == "0" && "$dpms" == "Disabled" ]]; then
  echo "focused"
else
  echo "chilling"
fi
