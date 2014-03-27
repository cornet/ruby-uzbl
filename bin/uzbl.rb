#!/usr/bin/env ruby

require 'uzbl'
require 'wmctrl'

w1 = Uzbl.create('http://google.com')
w2 = Uzbl.create('http://sheepy.org')

# Disable status bar on both windows
w1.status_bar false
w2.status_bar false

# make sure w1 is on top
w1.raise

