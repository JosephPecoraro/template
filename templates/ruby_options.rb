__FILE:ruby.rb__
# Parse potential command line arguments
program_name = $0.split(/\//).last
options = { :cat => false }
OptionParser.new do |opts|
	opts.banner = "usage: #{program_name} [option] [files]"
	opts.on("-c", "--cat", "Print the output to the shell.") do |u|
		options[:cat] = true
	end
	opts.on_tail("-h", "--help", "Show this message") do
		puts opts
		exit
	end
end.parse!
