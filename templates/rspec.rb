# usage: spec --format specdoc klass_spec.rb 
__FILE:header.txt__
require 'Klass'

describe Klass, " with my two files" do
	
	before(:all) do
		@file1 = 'in1.txt'
		@file2 = 'in2.txt'
    @files = [@file1, @file2]
		@in1 = File.read( @file1 )
		@in2 = File.read( @file2 )
		@in1_lines = File.readlines( @file1 )
		@in2_lines = File.readlines( @file2 )
  end

	before(:each) do
		@argf = ARGFy.new( @files )
		@argfrev = ARGFy.new( @files.reverse )
	end


  it "should show 2 different files" do
		@argf.inject( count=0 ) { |mem, line| count += 1 if @argf.new_file? }
    count.should == 2
  end


	it "should be able to grow with add_file" do
		three_in1 = @in1 * 3
		@argfl = ARGFy.new([@file1])
		@argfl.add_file(@file1)
		@argfl.add_file(@file1)
		str = @argfl.inject('') { |mem, line| mem += line }
		str.should == three_in1
	end


	it "should be able to get lines individually and in order" do
		@in1_lines.each { |line| line.should == @argf.gets }
		@in2_lines.each { |line| line.should == @argf.gets }
		@in2_lines.each { |line| line.should == @argfrev.gets }
		@in1_lines.each { |line| line.should == @argfrev.gets }
	end

end
