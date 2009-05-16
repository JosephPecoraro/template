#!/usr/bin/env ruby
# Author: Joseph Pecoraro
# Date: __DATE__
# Description: ___

require 'rubygems'
require 'hpricot'
require 'open-uri'

# I hid the URL, because who knows who would be searching through my scripts!
doc = Hpricot( open('http://bogojoker.com') )
puts (doc/:title).text
