# Benchmark Module
require 'benchmark'

# String Simple pad
class String
  def pad
    self.ljust(20)
  end
end

# Times to run the test
TIMES = (1e6).to_i;

# Run the benchmarks
puts "Running each test #{TIMES} times"
puts
print ' '*20
Benchmark.bm do |b|
  
  # Test 1 - for loop
  t1=b.report("1:for".pad) do
    TIMES.times do
      for x in (0...6) do
        # nothing
      end
    end
  end
  
  # Test 2 - upto()
  t2=b.report("2:number#upto".pad) do
    TIMES.times do
      0.upto(5) do |x|
        # nothing
      end
    end
  end

  # Test 3 - range#each
  t3=b.report("3:range#each".pad) do
    TIMES.times do
      (0...6).each do |x|
        # nothing
      end
    end
  end

  # Test 4 - number#times
  t4=b.report("4:number#times".pad) do
    TIMES.times do
      6.times do |x|
        # nothing
      end
    end
  end
  
  # Test 5 - shorter rnage
  t5=b.report("5:shorter range".pad) do
    TIMES.times do
      (0..5).each do |x|
        # nothing
      end
    end
  end
  
  # Print out diffs
  def diffs(arr, best, num)
    puts
    puts "Test #{num} was best:"
    arr.each_with_index do |e,i|
      if e != best
        better = e-best
        percent = ((better/best)*100).round/100.0
        puts "  * better then Test #{i} by: #{better.to_s.pad} (#{percent}% longer)"
      end
    end
  end
  
  # Determine best
  times = [t1,t2,t3,t4,t5].map { |t| t.real }
  case times.min
    when t1.real then diffs(times, t1.real, 1)
    when t2.real then diffs(times, t2.real, 2)
    when t3.real then diffs(times, t3.real, 3)
    when t4.real then diffs(times, t4.real, 4)
    when t5.real then diffs(times, t5.real, 5)
    else puts "Logic Fails..."
  end
  
end
