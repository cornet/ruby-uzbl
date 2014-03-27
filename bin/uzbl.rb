#!/usr/bin/env ruby

require 'uzbl'
require 'wmctrl'

# Close all existing windows
Uzbl.close_all

# Start some new ones
google = Uzbl.create('http://google.com')
sheepy = Uzbl.create('http://sheepy.org')

# Disable status bar on both windows
google.status_bar false
sheepy.status_bar false

# make sure w1 is on top
google.focus

sleep 5

