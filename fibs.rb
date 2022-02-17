def fibs(num)
  result = [0]
  running_total = 0
  previous_total = 1
  for i in 1..(num) 
    run = running_total
    prev = previous_total
    previous_total = run
    running_total += prev
    result << running_total
  end
  puts "Result: #{result}"
end

fibs(20)

  