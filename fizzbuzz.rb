def fizzbuzz(size)
  output = []
  (1..size.to_i).each do |x|
    a = (x % 3).zero? && (x % 5).zero? ? 'FizzBuzz' : x.to_s
    a = 'Fizz' if (x % 3).zero? && x % 5 != 0
    a = 'Buzz' if (x % 5).zero? && x % 3 != 0
    block_given? ? output.push(yield a) : output.push(a)
  end
  output
end
