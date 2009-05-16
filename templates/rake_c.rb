require 'rake/clean'

SRC = FileList['**/*.rb']
OBJ_DIR = "obj"
OBJ = SRC.collect { |f| File.join(OBJ_DIR, File.basename(f).ext('o')) }
CLEAN.include(OBJ)
CLOBBER.include("something")

task :default => [:some_task]

desc "A Public Description of the Task"
task :some_task => [:some_other_task] do
	sh "ls"
end

desc "Another Task"
task :some_other_task do
	sh "ls"
end
