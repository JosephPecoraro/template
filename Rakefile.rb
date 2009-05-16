# Author: Joseph Pecoraro
# Date: Saturday, May 16, 2009
# Description: Installation for templates.

# Setup
verbose(true)
task :default => :"install"

# install
desc "[sudo] Install the script and templates."
task :install do
	HOME_DIR = File.expand_path('~') + "/"
	TEMPLATE_DIR = "#{HOME_DIR}/.templates"
	puts "Installing the executable:"
	sh "cp bin/template /usr/local/bin/template"
	puts
	puts "Installing templates:"
	sh "mkdir #{TEMPLATE_DIR}" if not File.exists?(TEMPLATE_DIR)
	sh "cp templates/* #{TEMPLATE_DIR}"
	puts
	puts "Installation complete."
end

