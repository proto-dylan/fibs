
@result = Array.new
def fibonacci(number)
    if number < 2
      number
    else
      fibonacci(number - 1) + fibonacci(number - 2)
    end
end

puts "Enter number"

num = gets.chomp.to_i

for i in 0..num
  @result << fibonacci(i)
end
puts "Results: #{@result}"

fibonacci2 = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }

puts "SEcond way: #{fibonacci2[num]}"

puts "third:"
puts (1..num-1).inject([0, 1]){|f| f << f.last(2).inject(:+) }