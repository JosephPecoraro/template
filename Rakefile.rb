# Author: Joseph Pecoraro
# Date: Saturday, May 16, 2009
# Description: Installation for templates.

# Setup
verbose true
task :default => :install

# install
desc "Install the script and templates."
task :install do
	HOME_DIR = File.expand_path('~')
	TEMPLATE_DIR = "#{HOME_DIR}/.templates"
	puts "Installing the executable:"
	sh "sudo cp bin/template /usr/local/bin/template"
	puts
	puts "Installing templates:"
	mkdir_p TEMPLATE_DIR
	cp_r 'templates/.', TEMPLATE_DIR
	puts
	puts "Installation complete."
end
