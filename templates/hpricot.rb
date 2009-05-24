#!/usr/bin/env ruby
__FILE:header.txt__
require 'rubygems'
require 'hpricot'
require 'open-uri'

# I hid the URL, because who knows who would be searching through my scripts!
doc = Hpricot( open('http://bogojoker.com') )
puts (doc/:title).text
