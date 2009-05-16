__FILE:ruby.rb__
# When run as as script
if $0 == __FILE__
	
	# Handle ^C Interrupt
	trap("INT") { puts; exit }
	
	# Usage
  if ARGV.size.zero?
    program_name = $0.split(/\//).last
    puts "usage: #{program_name} [options] files"
  else
    Class.new(ARGV)
  end

end
