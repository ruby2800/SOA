# I didn't follow robocop rules in complexity, because after I tried it, I still think this one is more easy to understand the logic
def fizzbuzz(size)
  arr = (1..size).to_a
  arr.map do |x|
    a = (x % 3).zero? && (x % 5).zero? ? 'FizzBuzz' : x.to_s
    a = 'Fizz' if (x % 3).zero? && x % 5 != 0
    a = 'Buzz' if (x % 5).zero? && x % 3 != 0
    block_given? ? yield(a.to_s) : a.to_s
  end
end
