#!/bin/bash
hyprctl keyword cursor:zoom_factor "$(hyprctl getoption cursor:zoom_factor | awk 'NR==1{print $2==1 ? 2.5 : 1}')"
