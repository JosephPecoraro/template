__FILE:ruby.rb__
# Parse potential command line arguments
require 'optparse'
program_name = $0.split(/\//).last
options = { :cat => false, :output => nil }
OptionParser.new do |opts|
	opts.banner = "usage: #{program_name} [option] [files]"
	opts.on("-o FILE", "--output FILE", "Write directly to a file") { |f| options[:output] = f }
	opts.on("-c", "--cat", "Print the output to the shell.") { |u| options[:cat] = true }
	opts.on_tail("-h", "--help", "Show this message") { puts opts; exit }
end.parse!
