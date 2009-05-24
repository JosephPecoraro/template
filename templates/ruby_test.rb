#!/usr/bin/env ruby
__FILE:header.txt__
require 'klass.rb'
require 'test/unit'
class KlassTest < Test::Unit::TestCase
	
	def setup
		puts "Before Everything"
	end
	
	def teardown
		puts "After Everything"
	end

  def test_func
		expected = "hello"
    assert_equal expected, Klass.func("hello")
  end

end
